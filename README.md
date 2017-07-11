# stetho-array
stetho-array (ascul-array) project

@Pratyusha Priya Kalluri | pkalluri[at]mit.edu
Camera Culture Group, MIT Media Lab

--ABOUT THE PROBLEM BEING ADDRESSSED--

AscultAtion relies on external measurement of signals within the body to detect
and understand internal anomalies. The aim is to diagnose and treat patients quickly 
and non-invasively. The stethoscope is the primary tool for ascultation,
but many doctors, including the clinician mentor I worked with, state
ascultation via traditional stethoscope has not seen significant innovation
in many years.

I propose that multi-stethoscope arrays have the potential to bring efficiency,
precision, and quantitative rigor to ascultation. Smart signal processing
comparing signal information across such a multi-stethoscope (concurrent) 
array creates the potential for fast triangulation data and summary data of
internal signals.

Multi-stethoscope arrays will require thoughtfully-designed,
efficient signal processing algorithms to (1) Provide proof of concept,
(2) Understand constraints/scope on such a device, (3) Understand important
optimizations, and (4) Implement the final device. 

The program included here emphasizes (1), also implementing (4). Its
flexible, parametrizable code makes it useful in exploring (2) and (3).


--ABOUT THIS PROGRAM--

The direct purpose of this program is to demonstrate that
self-positioned arrays of listeners can facilitate successful, precise
reconstruction, localization, and visualization of otherwise
unknown signals.

Specifically, this program uses (a) user-inputted sound-emitters (plotted in red)
to simulate listeners' data (plotted in black) or (b) uses user-inputted +
live-recorded listeners' data (also plotted in black), then uses this listeners' data
alone to successfully recontruct sound-emitters.

All matrix data representations and other design decisions are documented
within the code.


--HOW TO RUN THIS PROGRAM--

Set the PARAMETERS file, then run the RUNNER script.


--ABOUT THE ORGANIZATION OF THIS PACKAGE--

The SoundReconstruction directory contains all code necessary to run the 
Sound Reconstruction program.
        
The Miscellaneous directory is currently a smorgasbord of code that is 
potentially useful in next steps, but is not incorporated into the
current program.
