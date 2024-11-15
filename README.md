# Keithley2400_GUI

The Keithley_GUI is a Python based user interface designed to perform IV measurements with the Keithley 2400 series Source Measure units (SMU), based upon the existing library [Keithley_GPT](github.com/NREL/Keithley_GPT).

## About

## Identifying Instruments

For the GUI to connect and send data to the SMU, the correct port ID must be stated in the _Resource Name_ input field. If the SMU is connected to a different PC or via a different cable connection, this name must be correctly changed to the corresponding port. If you don't know the name of the correct port, it requires running a separate python code to identify the ports and installation of the [PyMeasure scientific package](https://pymeasure.readthedocs.io/en/latest/quick_start.html) and the [NI-VISA library](https://pyvisa.readthedocs.io/en/latest/faq/getting_nivisa.html#faq-getting-nivisa). This functionality may be added in future releases.

Run the code below in a command prompt, IPython terminal, or Jupyter notebook.

``` python
from pymeasure.instruments.resources import list_resources
list_resources()
```
 The output will list all connections like below:

```
0 : ASRL2::INSTR : Not known
1 : ASRL10::INSTR : Not known
2 : GPIB0::1::INSTR : KEITHLEY INSTRUMENTS INC.,MODEL 2400,1248014,C30   Mar 17 2006 09:29:29/A02  /K/J
Out[1]:
('ASRL2::INSTR', 'ASRL10::INSTR', 'GPIB0::1::INSTR')
```

Input the correct port into the _Resource Name_ field.

## Documentation
Refer to the [usage guide](<./IVSweep GUI Documentation.pdf>) for complete setup and usage instructions.

> [!NOTE]
User-input voltage and current values are in units of volts (V) and amperes (A), respectively. _Source Delay_ is in units of seconds. 

## System Requirements
This software is currently only guaranteed to run on Windows. Support for Linux and/or MacOS targets may be added in the future provided NI proprietary driver support for these platforms becomes available.

- Drivers:
    - NI-VISA
    - NI 488.2 (required for GPIB controllers)
>
- Python packages:
    - PyVISA
    - NumPy
    - Matplotlib

> [!NOTE]
> The NI-VISA and NI 488.2 drivers are required if using the NI GPIB-USB-HS controller.
> Driver support for the NI GPIB-USB-HS controller is only available for Windows operating systems.
> PCI(e)-GPIB controller driver support is available for Windows and certain Linux distributions.
>
> Check the [National Instruments hardware OS compatibility specifications](https://www.ni.com/en/support/documentation/compatibility/21/ni-hardware-and-operating-system-compatibility.html) for all NI hardware operating system compatibility and driver support.

