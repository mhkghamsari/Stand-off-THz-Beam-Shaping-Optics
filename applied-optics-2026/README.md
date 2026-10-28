# Single-sided lens terahertz flat-top beam shaping in the Fresnel region

**Ehsan Imanbeygi, Mohammad Hossein Koohi Ghamsari, Mehdi Ahmadi-Boroujeni, and Babak Honarbakhsh**

*Applied Optics* **65**(2), 551–557 (2026). [DOI: 10.1364/AO.583170](https://doi.org/10.1364/AO.583170)

This paper derives a single-sided plano-convex lens from geometrical-optics principles. One curved surface performs both collimation and beam shaping, converting a divergent Gaussian source into flat-top illumination in the Fresnel region. Two designs are studied: 100 GHz with a 400 mm target radius at 3 m, and 200 GHz with a 500 mm target radius at 4 m. Analytical, integral-equation, and finite-element results are compared with a conventional concave-convex lens; frequency and source-alignment sensitivity are also examined.

## Figures

![Author figure showing the THz source, lens, and stand-off target plane](figures/lens-and-imaging-geometry.png)

*Author project figure: lens and simulation geometry (Figure 3 in the author manuscript).*

![Author figure comparing calculated and simulated output fields](figures/beam-shaping-results.png)

*Author project figure: calculated and simulated lens profiles and flat-top output fields for the 100 and 200 GHz examples (Figure 5 in the author manuscript).*

## Reproduce the analytical lens profile

Run [`matlab/pcl_profile_100ghz.m`](matlab/pcl_profile_100ghz.m) in MATLAB. It calculates the 100 GHz single-sided lens surface from the design equations and plots its cross section. The script is a self-contained, readable adaptation of the analytical profile section in the source MATLAB notebook. It does **not** run the CST or COMSOL comparisons or regenerate the paper's field plots.

## Paper and data

- [Publisher abstract and version of record](https://opg.optica.org/ao/abstract.cfm?uri=ao-65-2-551)
- [Supplementary information at the publisher](https://opg.optica.org/ao/abstract.cfm?uri=ao-65-2-551)
- The local file named `AO_583170_preview.pdf` is an author-revised manuscript, but it includes a publisher notice restricting reproduction and distribution. It is not mirrored here. No public arXiv identifier was verified from the supplied files.
- The publisher's data-availability statement says underlying data may be obtained from the authors on reasonable request. The repository therefore includes an analytical example but no exported simulation field grids.
