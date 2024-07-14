# SIGNAL PROCESSING LAB-5 
> Abhinav Marri

## Question 1
-  Script `q1_d.m` gives us the ffts of the signal x[n]. It plots them while changing the sample rate of the DFT when run. 
-  Script `q1_e.m` plots the DFTs when the signal length L is varied.
- Script `q1_f.m` performs the same function as `q1_d.m` after changing the frequency f<sub>0</sub>. 
- Script `q1_g.m` uses a hanning window and finds the DFT and plots it for given signal p[n]
- Script `q1_i.m_` works with an audiofile and ouptuts the DFT of the input audio signal.  The used audio files are included in the 'Audiofiles' folder.

<br></br>

# Question 2
- Script `q2.m` calculates the convolution and circular convolution of two given signals
It does this in two methods : DFT and direct.

# Question 3
 The scripts `q3_x.m` plot the DFT for the following signals 
<ol> 
<li>[ones(L,1); zeros(N-L,1)], for fixed L = 4 repeat for N = 4, 16, 64</li>
<li> sin(𝜔0𝑛), for 𝜔0 = 3𝜋/10 and N = 20</li>
<li> cos(𝜔0𝑛), for 𝜔0 = 3𝜋/10 and N = 20 </li>
<li> sin(𝜔0(𝑛 − 1)), 𝜔0 = 3𝜋/10 and N = 20 </li>
<li> (0.8)𝑛 for N = 20 </li>
<li> (−0.8)𝑛 for N = 20</li> </ol>

The script plots the magnitude, phase and the sequence of the DFT.
