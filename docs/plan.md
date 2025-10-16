# Project Plan:
- - -
 * ###### Partially documenting steps for myself, but also for anyone else looking to see what the planning from start to finish looks like.
- - - 
### Goals
 - [ ] Setup Repo and tooling
 - [ ] Choose and test pretrained model that meets time/size constraints, optional finetune if needed
 - [ ] Export and Quantize model
 - [ ] Deploy / Test on Linux RTOS (*Bela*) 
 - [ ] Deploy / Test on MCU (*ESP32-S3 Nano*)

- - - 
### *Notes*

 - Each goal does not warrant the same time/effort allocation, nor with this be completely linear. 
 - Each goal likely is comprised of smaller goals. Example: For both of the hardware deployments, wiring up a circuit for an $I^{2}S$ protocol to set the mic inputs will likely be a challenge in it's own. 
     - For more details, I will have a list of more specific To-Dos in the [TODO.md](./TODO.md) that accompany each larger goal. 