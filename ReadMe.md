Walsh-Hdamard Transform
-----------------------

```zsh
git clone https://github.com/ddgg-el/hadamard_max --recursive
```

```zsh
cmake -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug .
cmake --build build 
```

$$H_m = \frac{1}{2^{m/2}}
\begin{bmatrix}
H_{m-1} & H_{m-1} \\
H_{m-1} & -H_{m-1} 
\end{bmatrix}
$$