README.TXT
=============================================
files:
showCoinSeg.m     displays segmentation result
img1.png          test coin image
readme.txt        this file
segScaleAccHT.m   coin segmentation function
segScaleAccHT.pdf algorithm documentation
testSegHT.m       demo script

properties:
* only 1 coin per image allowed
* only circular coins allowed
* image background may be textured

img1.png stems from the small MUSCLE CIS Seibersdorf
test dataset.

Version 1.1
Date: April 25 2008
(C)opyright Christian Kotz 2007/2008


Algorithms is similar to coin segmentation algorithm in:

@INPROCEEDINGS{Reisert2006,
  author = {Marco Reisert and Olaf Ronneberger and Hans Burkhardt},
  title = {An Efficient Gradient Based Registration Technique for Coin Recognition},
  year = {2006},
  booktitle = {Proceedings of the MUSCLE CIS Coin Competition Workshop},
  pages = {19--31},
  booktitleaddon = {September 11, 2006},
  venue = {Berlin, Germany},
  editor = {Michael N{\"o}lle and Michael Rubik},
  url = {http://muscle.prip.tuwien.ac.at/coin_workshop2006_proceedings/reisert.pdf},
  urldate = {23-1-2008},
  abstract = {This paper presents a coin recognition system based completely on
  the direction of the gradient vectors. To optimally align two coins
  we search for a rotation such that as most as possible corresponding
  gradient vectors point into the same direction. After discretizing
  the gradient directions this can be done quickly by the use of the
  Fast Fourier Transform. The classification is done by a simple nearest
  neighbor search followed by several rejection criteria to meet the
  demand of a low false positive rate.},
  affiliation = {Albert-Ludwig University Freiburg, Faculty for Applied Sciences, Department
  of Compter Science}
}

Detailed algorithm description can be found in:

@UNPUBLISHED{Kotz2007,
  author = {Christian Kotz},
  title = {Practical Work: Automatic Coin Recognition. LVA-Nr. 183.176},
  note = {Pattern Recognition and Image Procesing Group. Institute of Computer
  Aided Automation. Faculty of Informatics. Vienna Univerity of Technology.
  unpublished.},
  month = oct,
  year = {2007},
  affiliation = {University of Technical Science Vienna, Faculty of Informatics, Department
  of Computer Aided Automation, Pattern Recognition and Image Processing Group},
  file = {:./CoinReport.pdf:PDF},
  keywords = {coins},
  owner = {CK},
  school = {Pattern Recognition and Image Procesing Group. Institute of Computer
  Aided Automation. Faculty of Informatics. Vienna Univerity of Technology},
  type = {Practical Work Report}
}

