set SynModuleInfo {
  {SRCNAME IGCN_Pipeline_VITIS_LOOP_12_1 MODELNAME IGCN_Pipeline_VITIS_LOOP_12_1 RTLNAME IGCN_IGCN_Pipeline_VITIS_LOOP_12_1
    SUBMODULES {
      {MODELNAME IGCN_flow_control_loop_pipe_sequential_init RTLNAME IGCN_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME IGCN_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME IGCN_Pipeline_VITIS_LOOP_19_2 MODELNAME IGCN_Pipeline_VITIS_LOOP_19_2 RTLNAME IGCN_IGCN_Pipeline_VITIS_LOOP_19_2}
  {SRCNAME IGCN MODELNAME IGCN RTLNAME IGCN IS_TOP 1
    SUBMODULES {
      {MODELNAME IGCN_testarr_RAM_AUTO_1R1W RTLNAME IGCN_testarr_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME IGCN_outputarr_RAM_AUTO_1R1W RTLNAME IGCN_outputarr_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
