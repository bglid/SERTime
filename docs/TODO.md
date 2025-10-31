# To-Dos:
- - -
 * ###### Check out the [plan.md](./plan.md) file to see the goals at a larger bird's eye view.
- - - 
## Organization:

 - Each set of Todos that I leave myself will be loosely tied to a goal from [plan.md](./plan.md). 
 - There is likely to be some bleed between these goals, as things are rarely built completely linearly. I will try to place these smaller to-dos as tasks of sub-goals where it makes sense. However, I want to also keep a trail of my process that is honest. 
- - - 
 ### List of Goals

 - [Project Setup](#project-setup)
 - [Model Design](#model-design)
 - [Export and Quantization](#export-and-quantization)
 - [On-device Deployment](#deployment)
 <!-- - [Bela Deployment](#bela) -->

- - - 

### Project Setup

 - [x] Get UV setup for python and workflow scripts
 - [x] Setup pre-commit hooks
 - [x] Search for models to work off of (GTCRN)
 - [x] setup datasets for offline evaluation
 - [x] Test PyTorch Converters
 - [ ] Setup datasets for finetuning
 - [ ] Setup basic .sh scripts/makefile
 - [ ] Scope out datasheets for $I^{2}S$ Protocol 

- - - 

### Model Design

 - [ ] Setup offline evaluation metrics in [/python](/python/)
 <!-- - [ ] load .onnx files -->
 - [ ] Reimplement model replacing GRUs and PreRelu for TFLM
 - [ ] Test out fine-tuning freezing non GRU layers to only update GRU replacements
 <!-- - [ ] Run metrics to profile on desktop against onnxruntime inference  -->
 - [ ] Setup Inference for validation and benchmarking adjusted model offline pre-convert
 - [ ] Potential revisit to add QAT
 - [ ] Consider adding dry/wet knob like seen in DEMUCS
 - [ ] *Extra*: Create tests at this point for any ```.py``` files aside from Model Design 

- - - 

### Export and Quantization

 - [ ] Convert PyTorch Adjusted model with TFLite Micro using PTQ 
 - [ ] Profile and measure accuracy of quanitzed model
 - [ ] Potentially revisit [model design](#model-design) to implement QAT if bad performance 
 - [ ] Report measure of # of params and MMACs, ensure can fit on-device or adjust


- - - 

### Deployment

*NOTE: Subject to change to only MCU dependent on time*

 - [ ] Setup build toolchain for Bela and MCU deployment
 - [ ] Run quick deployment for control example with ```.onnx``` for Bela
 - [ ] Setup $I^2S$ for Bela
 - [ ] Write SE inference program in C for MCU using ```.tflite``` model
 - [ ] Get performance for both models in terms of **Latency, Power Consumption, Accuracy**

- - - 
