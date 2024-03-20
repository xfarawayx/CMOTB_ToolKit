# CMOTB Evaluation ToolKit

## 使用教程

CMOTB 评测工具包含简单集、困难集和联合集三部分，分别位于 Easy、Hard 和 Joint 子文件夹中。以下的教程以 Joint 下的评测为例，其余两个子集的评测方法相同。

1. 将测评结果文件放在同一目录下，文件夹命名为跟踪器的名字；
2. 将结果文件夹放在 `tracking_results` 路径下；
3. 在 `utils/config_tracker.m` 中配置需要测试的跟踪器结果；
4. 运行 `PlotPR.m` / `PlotNPR.m` / `PlotSR.m`，即可得到对应指标的测评结果。

若需要评测具体属性的结果，可将 `utils/config_sequence.m` 中的 `all_dataset.txt` 修改为 `属性名.txt`。CMOTB 包含的所有属性如下：

| 属性名 |             定义              |
| :----: | :---------------------------: |
|   FO   |        Full Occlusion         |
|   PO   |       Partial Occlusion       |
|  DEF   |          Deformation          |
|   SV   |        Scale Variation        |
|  ROT   |           Rotation            |
|   FM   |          Fast Motion          |
|   CM   |         Camara Motion         |
|   IV   |    Illumination Variation     |
|   TB   |          Target Blur          |
|   OV   |          Out-of-View          |
|   BC   |     Background Clustering     |
|  SIO   | Similar Interferential Object |
|   LR   |        Low Resolution         |
|  ARC   |      Aspect Ratio Change      |
|   VC   |       Viewpoint Change        |
|   MA   |      Modality Adaptation      |
|   MM   |       Modality Mutation       |
|   MD   |        Modality Delay         |

若需分别对不同模态切换次数进行评测，可将 `utils/config_sequence.m` 中的 `all_dataset.txt` 修改为如下文件名：

|  文件名   | 对应切换次数 |
| :-------: | :----------: |
| `sw1.txt` |     $1$      |
| `sw2.txt` |     $2$      |
| `sw3.txt` |     $3$      |
| `sw4.txt` |   $\ge 4$    |

