cwlVersion: v1.1
class: CommandLineTool
baseCommand: ["python3"]
arguments:
  - position: 1
    valueFrom: '$(inputs.source_file)'
  - position: 2
    valueFrom: '$(inputs.input_file1)'
  - position: 3
    valueFrom: '$(inputs.input_file2)'

inputs:
  source_file:
    type: File
  input_file1:
    type: File
  input_file2:
    type: File

outputs:
  csv_file:
    type: File
    outputBinding:
      glob: "result.csv"