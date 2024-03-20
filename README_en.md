# CMOTB Evaluation ToolKit

## Usage

The CMOTB evaluation toolkit consists of three parts: Easy Set, Hard Set, and Joint Set, located in the Easy, Hard, and Joint subfolders respectively. The evaluation methods for each subset are identical. The following tutorial uses one of these subsets as an example:

1. Place the evaluation result files in the same directory and name the folder after the tracker's name.
2. Put the result folder in the `tracking_results` directory.
3. Configure the tracker results to be tested in `utils/config_tracker.m`.
4. Run `PlotPR.m` / `PlotNPR.m` / `PlotSR.m` to obtain the evaluation results for the corresponding metrics.

To evaluate results for specific attributes, you can modify `all_dataset.txt` in `utils/config_sequence.m` to `attribute_name.txt`, where `attribute_name` is the specific attribute you want to evaluate. CMOTB includes the following attributes:

| Attribute name |          Definition           |
| :------------: | :---------------------------: |
|       FO       |        Full Occlusion         |
|       PO       |       Partial Occlusion       |
|      DEF       |          Deformation          |
|       SV       |        Scale Variation        |
|      ROT       |           Rotation            |
|       FM       |          Fast Motion          |
|       CM       |         Camara Motion         |
|       IV       |    Illumination Variation     |
|       TB       |          Target Blur          |
|       OV       |          Out-of-View          |
|       BC       |     Background Clustering     |
|      SIO       | Similar Interferential Object |
|       LR       |        Low Resolution         |
|      ARC       |      Aspect Ratio Change      |
|       VC       |       Viewpoint Change        |
|       MA       |      Modality Adaptation      |
|       MM       |       Modality Mutation       |
|       MD       |        Modality Delay         |

If you need to evaluate modality switch times separately, you can modify `all_dataset.txt` in `utils/config_sequence.m` to the following filenames:

| Filename  | Switch Time |
| :-------: | :---------: |
| `sw1.txt` |     $1$     |
| `sw2.txt` |     $2$     |
| `sw3.txt` |     $3$     |
| `sw4.txt` |   $\ge 4$   |