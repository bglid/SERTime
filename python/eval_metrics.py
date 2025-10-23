from torch import randn
from torchmetrics.audio import (
    ShortTimeObjectiveIntelligibility,
    PerceptualEvaluationSpeechQuality,
)

# test
preds = randn(8000)
target = randn(8000)

# stoi test
stoi = ShortTimeObjectiveIntelligibility(8000, False)
res_stoi = stoi(preds, target)
print(f"STOI Test Results: \n {res_stoi}")

# pesq test
pesq = PerceptualEvaluationSpeechQuality(8000, "nb")
res_pesq = pesq(preds, target)
print(f"PESQ Test Results: \n {res_pesq}")
