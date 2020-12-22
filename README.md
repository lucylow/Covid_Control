# Covid Control
<div>
  
  [![Status](https://img.shields.io/badge/status-active-success.svg)]()
  [![GitHub Issues](https://img.shields.io/github/issues/lucylow/Covid_Control.svg)](https://github.com/lucylow/Covid_Control/issues)
  [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/lucylow/Covid_Control.svg)](https://github.com/lucylow/Covid_Control/pulls)
  [![License](https://img.shields.io/aur/license/android-studio.svg)]()

</div>

---

XPRIZE Pandemic Response Challenge. AI prediction model to estimate daily COVID-19 cases with astronomically high accuracy and prescriptive models for Intervention Plans that minimize infection cases and economic costs.

Python modeel application for machine learning training Next Character Predictions using Long Short Term Memory Model (LSTM) and Time Series Prediction. Train model to generate random text based on patterns in a given text corpus.


---


## Table_of_Contents

* [Motivation](#Motivation)
* [Covid_Control](#Covid_Control)
* [Artifical_Neural_Network](#Artifical_Neural_Network)
* [LSTM_Model](#LSTM_Model)
* [Text_Generation_Model](#Text_Generation_Model) 
* [Text_Parameters](#Text_Parameters)
* [Usage](#Usage)
* [Conclusion](#Conclusion)
* [References](#References) 

---

## Motivation

* LSTM commonly used in industry by companies ike Google, Apple, Microsoft, and Amazon: 
  * Time series prediction 
  * Speech recognition 
  * Music/rhythm learning 
  * Handwriting recognition 
  * Sign language translation 
  
* Bloomberg Business Week: **“LSTM is arguably the most commercial AI achievement, used for everything from predicting diseases to composing music."**

---

## Covid_Control

Web application for artifical intelligence model training and text generation:

*Image. Screenshot of the web demo at https://lucylow.github.io/Covid_Control*

---


## Theory: Artifical_Neural_Network
RNN and LSTM and derivatives use mainly sequential processing over time

* Recurrent Neural Network [RNN]:
  * Used for classifying, processing, and **making predictions based on time-series** with time, sequence, or anything with a temporal dimension.
  * The decision a recurrent net reached at **time step t - 1** affects the decision it will reach one moment later at **time step t**.
  * RNNs are computationally intensive - recommendation to script on GPU
  *  they accept a fixed-sized vector as input (e.g. an image) and produce a fixed-sized vector as output (e.g. probabilities of different classes). 
  * RNNS allow us to operate over sequences of vectors: Sequences in the input, the output, or in the most general case both.
  
* Long Short Term Memory [LSTM]:
  * Special kind of RNN, capable of learning long-term dependencies that works slightly better in practice than RNN due to its more powerful update equation and backpropagation dynamics.
  * LSTM + Vanilla RNN solve the **vanishing gradient problem** since  units allow gradient flows to be unchanged
    * Vanishing Gradient Problem : Long term information has to sequentially travel through all cells before getting to the present processing cell. This means it can be easily corrupted by being multiplied many time by small numbers < 0.
  * Neural network operates on different scales of time at once and information can be stored in, written to, or read from a cell.
  * Gates are analog with **element-wise multiplication by sigmoids**, which are all in the **range of 0-1**. Refer to diagram under " LSTM Model".

*Image. Explanations of how the RNN and LSTM models work.*


---


## Theory: Text_Generation_Model

The LSTM model operates at the **character level**. It takes a tensor of shape `[numExamples, sampleLen, charSetSize]` as the input. The input text data is from "./data" file.

The input is a one-hot encoding of sequences of `sampleLen` characters. The characters belong to a set of `charSetSize` unique characters. With the input, the model outputs a tensor of shape `[numExamples, charSetSize]`, which represents the model's predicted **probabilites of the character that follows the input sequence**.

This process is repeated in order to **generate a character sequence** of a given length hence the "text generation" part of the project. The randomness (diversity) is controlled by a temperature parameter.

At least 20 epochs (20 cases of the full training set) are required before the generated text starts sounding coherent.

---

## Technical: Input Data for Text Generation

Potential text datasets to test model: https://cs.stanford.edu/people/karpathy/char-rnn/

If Covid_Control is run on new data, make sure corpus has at least ~100k characters. Ideal situation is ~1M characters. 


---
## Technical: Text_Parameters

* 'Name of the text dataset’ for input file
* Path to the trained next-char prediction model saved on disk 
* Length of the text to generate 
* Temperature value to use of text generation. Higher values for more random-looking results 
* CUDA GPU for training 
* Step length for how many characters to skip between one example to next 


---

## Usage

The web demo supports model training and text generation. The machine model training in done in browser, inference in browser, and the save-load operations are done with an API call to the IndexDB database.

To launch the demo, do:

```sh
yarn && yarn watch
```
If you try this script on new data, make sure your corpus
has at least ~100k characters. ~1M is better.

---

## Conclusion 

Covid_Control
---

## References 
* Kera. LSTM Text Generation Example. https://github.com/keras-team/keras/blob/master/examples/lstm_text_generation.py
* Original LSTM paper Hochreiter & Schmidhuber (1997) http://www.bioinf.jku.at/publications/older/2604.pdf
* Mozilla's IndexDB. JavaScript-based object-oriented database documentation. https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API
* Chapter 10 of Deep Learning Book by Goodfellow et. al. http://www.deeplearningbook.org/
* Code example python LSTM https://github.com/wojciechz/learning_to_execute
* Oxford's Machine Learning course. Practical6 LSTM for language modelling. https://github.com/oxford-cs-ml-2015/practical6
* Comparing the LSTM vs the Transformer model for text generation https://openai.com/blog/language-unsupervised/
* Andrej Karpathy. "The Unreasonable Effectiveness of Recurrent Neural Networks" http://karpathy.github.io/2015/05/21/rnn-effectiveness/ also the code from https://github.com/karpathy/char-rnn
* Sepp Hochreiter; Jürgen Schmidhuber "Long short-term memory". Neural Computation. doi:10.1162/neco.1997.9.8.1735. 
* Grid LSTM https://arxiv.org/pdf/1507.01526v1.pdf
* Generating Text with Recurrent Neural Networks. http://www.cs.utoronto.ca/~ilya/pubs/2011/LANG-RNN.pdf
* textgenrnn Python 3 module on top of Keras/TensorFlow for creating char-rnns https://github.com/minimaxir/textgenrnn
 

