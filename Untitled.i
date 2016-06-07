[Mesh]
  type = GeneratedMesh
  dim = 2
  nx = 10
  ny = 10
  enable = false
[]

[Variables]
  [./whatever]
  [../]
[]

[Kernels]
  [./laplaceyoung]
    type = LaplaceYoung
    variable = whatever
  [../]
[]

[BCs]
  [./bc]
    type = NeumannBC
    variable = whatever
    boundary = 'left right top bottom'
    value = 0.2
  [../]
[]

[Executioner]
  type = Steady
[]

[Outputs]
  exodus = true
[]

