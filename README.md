# ADC Lab Manual – Exercises Summary

This repository contains the laboratory practices using **MATLAB** for the **Analog and Digital Communications (ADC)** course, part of my Bachelor's in Audiovisual Systems Engineering.
The following is a translated and summarized description of each exercise.

The official instructions in Catalan are available in the [open access PDF](https://upcommons.upc.edu/entities/publication/7eb2f4de-ec0f-41f4-aea6-4fc11150b017) published by **Francesc Molina Oliveras** and **José Sala Álvarez**.

## Practice 0 – MATLAB Refresher

The purpose of this practice is to review **basic MATLAB concepts** needed for later labs. It covers signal generation, manipulation, and visualization.

### Exercises

1. Create a zero vector of arbitrary length `N1`.
2. Create a one vector of arbitrary length `N2`.
3. Generate a random number uniformly distributed in (0,1).
4. Generate a random number in (0,10).
5. Generate a random number in (−10,10).
6. Create a random vector `x6` in (0,1), extract the 13th component, and display it.
7. Open a blank figure window in MATLAB.
8. Plot the vector `x6` using both `plot` and `stem`.
9. Work with the complex number `2+3j`: compute its modulus and argument (in radians and degrees).
10. Square each element of `x6` into a new vector `x10`.
11. Generate a cosine signal sampled at 900 Hz with frequency 100 Hz.
12. Compute its Discrete Fourier Transform (DFT).
13. Explore MATLAB’s `subplot` function.
14. Plot the time-domain signal and its spectrum on the same figure using subplots.
15. Repeat with a different cosine frequency.
16. Generate Gaussian-distributed random variables with mean 10, variance 1. Compute empirical mean and variance.
17. Repeat with variance 2.
18. Create a matrix of normally distributed random numbers (2048 × 8).
19. Plot each column of this matrix using a `for` loop and `subplot`.
20. Generate a vector of odd numbers from 1 to 100 without loops.
21. Generate a vector from 1 to 100 in steps of 5 without loops.
22. Define a rectangular pulse of 10 samples, convolve it with itself, and plot the result.
23. Define a continuous-time rectangular pulse Π(t), compute and plot its autocorrelation.

## Practice 1 – Digital Baseband Modulation (I)

The goal is to **build a baseband transmitter** using **M-ary Pulse Amplitude Modulation (PAM)**.

### Sections

1. **Sampling**
- Generate a random baseband signal as a sum of K sinusoids with random amplitude, frequency, and phase.
- Visualize the signal in time and frequency domains.

2. **Digitization**
- Use the provided function `analogToDigital` to quantize the signal into a binary sequence.
- Work with the first 80 bits only.

3. **PAM Encoding**

- Map binary digits to symbols in 2-PAM and 4-PAM constellations.
- Compute theoretical symbol power.
- Write mapping functions (`mapper2PAM`, `mapper4PAM`).
- Encode test sequences and check correctness.
- Compare 2-PAM vs 4-PAM in terms of transmitter efficiency and receiver difficulty.

4. **Pulse Shaping**

- Implement the function `modula` to upsample and convolve with a shaping pulse.
- Use a rectangular pulse with 4 samples per symbol.
- Generate modulated signals for both 2-PAM and 4-PAM.
- Visualize signals in time and frequency.

## Practice 2 – Digital Baseband Modulation (II)

Here the focus shifts to **building the receiver** corresponding to the transmitter from Practice 1.

### Sections

1. **Signal Generation**
- Reuse the transmitted signals from Practice 1.
- Work with either predefined test sequences or previously generated data.

2. **Channel with Additive White Gaussian Noise (AWGN)**

- Add Gaussian noise with different variances.
- Compare transmitted vs received signals.
- Study how increasing noise affects clarity.

3. **Matched Filtering and Optimal Sampling**

- Filter the received signal with the matched filter (the shaping pulse).
- Determine the optimal sampling instant.
- Compare received symbols to transmitted ones and discuss discrepancies.

4. **Signal-to-Noise Ratio (SNR)**

- Compute SNR by separating filtered signal and filtered noise.
- Express results in dB.
- Compare with theoretical expectations.

## Practice 3 – Digital Baseband Modulation (III)

This practice introduces **symbol detection** and **error probability analysis.**

### Sections

1. **2-PAM Symbol Detector**
- Implement a sign-based decision rule.
- Recover binary sequence from received symbols.
- Compare transmitted vs detected bits under different noise levels.

2. **4-PAM Symbol Detector**

- Define decision regions for 4-PAM.
- Write a detector function and test it.
- Compare performance with 2-PAM.

3. **Error Probabilities (SER and BER)**

- Compute theoretical symbol power and required noise variance for a given SNR.
- Implement a function to estimate Symbol Error Rate (SER) and Bit Error Rate (BER) through simulation.
- Run experiments over a range of SNR values.
- Plot results in logarithmic scale and compare with theoretical curves.

## Practice 4 – Digital Passband Modulation

Here the focus moves to **wireless-style passband systems** with IQ modulation/demodulation and PSK constellations.

### Sections

1. **IQ Modulation & Demodulation (No Noise)**

- Implement an IQ modulator for a test symbol.
- Compute and visualize the shaping pulse.
- Implement an IQ demodulator with low-pass filtering.
- Verify correct recovery of in-phase and quadrature components.

2. **IQ Modulation & Demodulation (With Noise)**

- Add Gaussian noise to the channel.
- Implement a noisy demodulator.
- Apply matched filtering and determine optimal sampling instant.
- Compare transmitted vs received symbols.

3. **Passband Constellations**

- Generate random sequences for BPSK and QPSK.
- Plot them both in the constellation diagram and as symbol sequences.

4. **AWGN Channel Effects**

- Add Gaussian noise with different variances to BPSK and QPSK.
- Visualize constellation spreading as noise increases.

5. **Optional: Multiplicative Channel (No Noise)**

- Study how amplitude scaling (`h`) and phase shifts (`φ`) affect received constellations.
- Analyze separately and jointly the effects of gain and phase rotation.