Walsh-Hdamard Transform
=======================
Implementation of the Fast Walsh-Hadamard Transform in MaxMSP. Available as `hadamard~` (single-channel inlet/outlet pairs) and `mc.hadamard~` (multichannel).

Compatible with **macOS** and **Windows**.

Require **MaxMSP 8.6.5** or later; for [compiling](#build) **CMake 3.19** or later and **cpp compiler**.

Install
-----------------------

- Download the latest release according your operating system
- Unzip the folder and move it to the `Packages` path of MaxMSP

    MacOS: `'/Users/USER_NAME/Documents/Max 8/Packages/'`

- Launch MaxMSP

Arguments
-----------------------
- **order** (int, default: 1): specified the order of the matrix between 1 and 7.
$$NChans = 2^{order}$$

Attributes
-----------------------
- **@normalized** (int, default: 1): apply or omit normalization.

$$H_m = \frac{1}{2^{m/2}}
\begin{bmatrix}
H_{m-1} & H_{m-1} \\
H_{m-1} & -H_{m-1} 
\end{bmatrix}
$$

- **@clip_output** (int, default:0): clip values between -1.0 and 1.0.

- **@coeffs_buffer** (symbol): name of the buffer for saving the matrix input coefficients.

Messages
-----------------------

- **input_coeffs** (list, default: list of 1): list of input coefficients for each channel. Scaling input signal by specific coefficient for each channel.

- **reset_coeffs**: reset to default value (1 for all inputs)

- **dump**: list output of current values at last outlet

- **normalized** (int, default: 1): as the attribute

- **clip_output** (int, default: 0): as the attribute

Build
-----------------------

```zsh
git clone https://github.com/ddgg-el/hadamard_max --recursive
cd hadamard_max
cmake -B build .
cmake --build build 
```

Authors
-----------------------
- [Davide Gagliardi](https://github.com/ddgg-el) - info@davidegagliardi.eu
- [Davide Bardi](https://github.com/dvddmg) - davide13bardi@gmail.com