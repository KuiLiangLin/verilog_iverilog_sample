# iverilog_sample

1. Download iverilog exe file:

   http://bleyer.org/icarus/
   
   <a href="http://bleyer.org/icarus/">http://bleyer.org/icarus/</a>
   
2. Install

3. File -> This PC -> Right Click (for Windows user)

   Properties
   
   Advanced system seetings
   
   Environment Variable
   
   System variable -> path -> Edit
   
   New -> C:\iverilog\bin
   
   New -> C:\iverilog\gtkwave\bin
   
   OK

4. cmd window (for Windows user)

   C:\Users\verilogsample>iverilog add.v test_bench.v -o sample.vvp
   
   (C:\Users\verilogsample>iverilog -o sample.vvp rtl\*)
   
   C:\Users\verilogsample>vvp sample.vvp
   
   C:\Users\verilogsample>gtkwave sample.vcd

5. Waveform
   ![image](https://github.com/KuiLiangLin/verilog_iverilog_sample/blob/master/Waveform.GIF)
