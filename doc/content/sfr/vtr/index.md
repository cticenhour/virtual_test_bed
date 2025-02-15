# VTR Core Model and Results

!tag name=Versatile Test Reactor Core model
     description=Coupled multiphysics model of the VTR  core using homogenized diffusion neutronics, a homogenized support plate thermal expansion model and distributed thermal-hydraulics channels
     image=https://mooseframework.inl.gov/virtual_test_bed/media/vtr/vtr_core.png
     pairs=reactor_type:SFR
                       reactor:VTR
                       geometry:core
                       simulation_type:multiphysics
                       transient:steady_state
                       codes_used:BlueCrab;Griffin;BISON;SAM
                       computing_needs:Workstation
                       input_features:multiapps
                       fiscal_year:2022
                       institution:INL
                       sponsor:VTR

[VTR Model Description](vtr/vtr_model.md)

[VTR Model Inputs](vtr/vtr_model_inputs.md)

[VTR Results](vtr/vtr_results.md)

