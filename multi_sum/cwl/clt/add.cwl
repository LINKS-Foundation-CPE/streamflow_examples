cwlVersion: v1.1
class: CommandLineTool
baseCommand: ["python3"]
arguments:
  - position: 1
    valueFrom: '$(inputs.source_file)'
  - position: 2
    valueFrom: '$(inputs.input_file)'

inputs:
  source_file:
    type: File
  input_file:
    type: File

outputs:
  txt_file:
    type: File
    outputBinding:
      glob: "result.txt"