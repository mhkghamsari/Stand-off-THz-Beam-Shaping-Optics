# Reproducibility and further files

The public repository includes a standalone MATLAB example for the analytical 100 GHz lens profile. It calculates the surface without external field data or a proprietary solver. It has not been run in MATLAB in this preparation environment.

## Research files now included

| Repository path | Contents | Use and limitation |
| --- | --- | --- |
| [`applied-optics-2026/matlab/comparison/`](applied-optics-2026/matlab/comparison/) | `PCL_vs_CCL.mlx` and its 22-file `data/` folder, copied from `Simulations/Final/MATLAB/V2/` | Compares analytical, integral-equation, and FEM results. It calls `SFT`, which was not found in the inspected project tree; it has not been validated as a one-click reproduction. |
| [`applied-optics-2026/matlab/profile/`](applied-optics-2026/matlab/profile/) | `PCL_profile.mlx`, copied from `Simulations/MATLAB/` | Design and plotting notebook. Several sections load field exports or call `SFT`; not all of its exports are present beside it. The standalone `.m` script isolates the analytical profile calculation. |
| [`applied-optics-2026/comsol/`](applied-optics-2026/comsol/) | `PCL_alpha0.79_100GHz.mph` and `T1_PCL_alpha0.79_100GHz.mph`, copied from `Simulations/COMSOL/` | Binary COMSOL models tracked with Git LFS. Confirm the required COMSOL version, model state, and solver settings before relying on results. |
| [`applied-optics-2026/paper/`](applied-optics-2026/paper/) | Author-revised manuscript PDF, copied from the local `arXiv` folder | Not the publisher's final PDF; no public arXiv identifier was verified. The copyright and reuse notice is on its first page. |
| [`tabriz-journal-2026/paper/`](tabriz-journal-2026/paper/) | English author manuscript | No original simulation source was present in that project folder. |

Do not bulk-copy the project tree: it includes duplicate versions, reviewer correspondence, submission records, reference papers, temporary COMSOL/CST products, and generated plots. It also contains material unrelated to these two studies.

The *Applied Optics* article states that underlying data are available from the authors on reasonable request. The selected field exports and models were added after publication at the author's request. The repository does not yet provide complete units, coordinate conventions, COMSOL settings, software versions, or figure-by-figure regeneration instructions. Those details should be documented before presenting these materials as a fully reproducible package.
