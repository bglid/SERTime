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
 - [Model POC](#model-poc)
 - [Bela Deployment](#bela)
 - [Export and Quantization](#export-and-quantization)
 - [ESP32-S3 MCU Deployment](#esp32-s3)

- - - 

### Project Setup

 - [x] Get UV setup for python and workflow scripts
 - [x] Setup pre-commit hooks
 - [x] Search for models to use (although likely will be GTCRN)
 - [x] setup datasets for offline evaluation
 - [ ] Setup basic .sh scripts/makefile
 - [ ] Scope out datasheets for $I^{2}S$ Protocol (for each device)

- - - 

### Model POC

 - [ ] Setup offline evaluation metrics in [/python](/python/)
 - [ ] load .onnx files
 - [ ] Run metrics to profile on desktop against onnxruntime inference 

- - - 

### Bela 

 - [ ] Design minimal inference program for bela in [src](/src/)
 - [ ] X-compile .onnx model to run on Bela
 - [ ] ...

- - - 

### Export and Quantization

 - [ ] ...
 - [ ] ...


- - - 

### ESP32-S3

 - [ ] ...
 - [ ] ...

- - - 
