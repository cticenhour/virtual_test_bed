# LEU Fuel Pulse Model and Results

!tag name=LEU Fuel Pulse
     description=Reactivity Insertion Transient in a simplified cubic reactor to demonstrate multiphysics coupling capabilities
     image=https://mooseframework.inl.gov/virtual_test_bed/media/htgr/pulse/refcube.png
     pairs=reactor_type:HTGR
                       geometry:mini-core
                       simulation_type:multiphysics
                       transient:RIA
                       codes_used:Griffin;MOOSE_HeatTransfer
                       computing_needs:Workstation
                       fiscal_year:2023
                       sponsor:NRIC
                       institution:INL

[LEU Fuel Pulse Model](leu_pulse/treat_leu_model.md)

[LEU Fuel Pulse Results](leu_pulse/treat_leu_results.md)
