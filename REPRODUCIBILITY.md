# Reproducibility and further files

The public repository includes a standalone MATLAB example for the analytical 100 GHz lens profile. It calculates the surface without external field data or a proprietary solver. It has not been run in MATLAB in this preparation environment.

## Candidate files in the private project archive

| Source area | Candidate | Recommendation |
| --- | --- | --- |
| `Optics Letters_Applied Optics_Eucap/Simulations/Final/MATLAB/V2/` | `PCL_vs_CCL.mlx` and its `data/` folder | Strongest candidate for a later code release. The notebook compares analytical, integral-equation, and FEM results, but depends on exported fields and an `SFT` function that was not found in the inspected project tree. Review dependencies and the paper's data-availability terms first. |
| `Optics Letters_Applied Optics_Eucap/Simulations/MATLAB/` | `PCL_profile.mlx` | Useful design notebook; several sections load field exports or call `SFT`. The script in this repository isolates its analytical profile calculation. |
| `Optics Letters_Applied Optics_Eucap/Simulations/COMSOL/` | `PCL_alpha0.79_100GHz.mph`, `T1_PCL_alpha0.79_100GHz.mph` | Review model state, embedded results, external paths, and COMSOL version before publication. Track released `.mph` files with Git LFS. |
| `Optics Letters_Applied Optics_Eucap/Simulations/Final/MATLAB/V2/data/` | Selected `.txt` field exports | Release only data needed by a runnable notebook, with units, coordinates, and provenance. The full folder contains about 10 MB of generated outputs and is omitted here. |
| `Journal-Tabriz/arXiv/` | English author manuscript | Included as an author manuscript. No original simulation source was present in that project folder. |

Do not bulk-copy the project tree: it includes duplicate versions, reviewer correspondence, submission records, reference papers, temporary COMSOL/CST products, and generated plots. It also contains material unrelated to these two studies.

The *Applied Optics* article states that underlying data are available from the authors on reasonable request. Any broader data or model release should be reconciled with that statement. For a future COMSOL release, document geometry, materials, boundary conditions, solver settings, and steps to regenerate each figure.
