"""
Reads the "prediction dates" file locally (or from a locally visible remote mount). For each date pair (start date
and end date) requested, runs predict.py, using the supplied interventions plan, to generate the predictions.
"""

import argparse
import logging

# Have to do this here because imports below pull in boto which likes to set up logging configuration its own way.
from pandas import DataFrame

logging.basicConfig(
    format='%(asctime)s %(name)-20s %(levelname)-8s %(message)s',
    level=logging.INFO,
    datefmt='%Y-%m-%d %H:%M:%S'
)

import subprocess

import pandas as pd

LOGGER = logging.getLogger('robojudge')


def generate_predictions(requested_predictions_df: DataFrame, prediction_module: str) -> None:
    """
    Generates predictions for each of the requested scenarios by invoking `prediction_module`
    :param requested_predictions_df: A Pandas DataFrame containing the predictions to be made, one per row. See sample
    in `tests/fixtures` for format
    :param prediction_module: Path to the module to be invoked to generate predictions. Generally should be
    <path>/predict.py
    :return Nothing. Predictions are written to the designated output file supplied in
    requested_requested_predictions_df
    """
    for row in requested_predictions_df.itertuples():
        start_date = row.StartDate
        end_date = row.EndDate
        ip_file = row.IpFile
        output_file = row.OutputFile

        LOGGER.info(f'Running predict module {prediction_module} for {start_date} to {end_date} ip file {ip_file} output {output_file}')
        # Spawn an external process to run each predictor. In future this may be parallel and even distributed
        subprocess.call(
            [
                'python', prediction_module,
                '--start_date', start_date,
                '--end_date', end_date,
                '--interventions_plan', ip_file,
                '--output_file', output_file
            ]
        )


def get_predictions_tasks(requested_predictions_file):
    """
    Reads the file containing the list of predictions to be generated. It is likely that in the production scenario,
    this file will reside on a shared volume that will be maintained elsewhere (e.g. by the judge box)
    :param requested_predictions_file:
    :return: A Pandas DataFrame containing the predictions to be generated
    """
    # Don't want to parse dates here as we'll be sending them as strings to the spawned process command line
    return pd.read_csv(
        requested_predictions_file,
        encoding="ISO-8859-1"
    )


def do_main():
    """
    Main line for this module
    """
    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--requested-predictions-file",
                        dest="requested_predictions_file",
                        type=str,
                        required=True,
                        help="Path to the filename containing dates for predictions to be generated and "
                             "requested output files. A separate output file, with the requested name, will be "
                             "generated for each requested prediction date pair.")
    parser.add_argument("-p", "--prediction-module",
                        dest="prediction_module",
                        type=str,
                        required=True,
                        help="Path to the python script that should be run to generate predictions. According to the "
                             "API conversion this script should be named predict.py")
    args = parser.parse_args()

    LOGGER.info(f'Generating predictions from file {args.requested_predictions_file}')
    requested_predictions_df = get_predictions_tasks(args.requested_predictions_file, )
    generate_predictions(requested_predictions_df, args.prediction_module)


if __name__ == '__main__':
    do_main()
