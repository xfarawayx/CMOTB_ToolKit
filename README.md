# CMOTB Evaluation ToolKit

## 使用教程

CMOTB 评测工具包含简单集、困难集和联合集三部分，分别位于 Easy、Hard 和 Joint 子文件夹中。以下的教程以 Joint 下的评测为例，其余两个子集的评测方法相同。

1. 将测评结果文件放在同一目录下，文件夹命名为跟踪器的名字；
2. 将结果文件夹放在 `tracking_results` 路径下；
3. 在 `utils/config_tracker.m` 中配置需要测试的跟踪器结果；
4. 运行 `PlotPR.m` / `PlotNPR.m` / `PlotSR.m`，即可得到对应指标的测评结果。
