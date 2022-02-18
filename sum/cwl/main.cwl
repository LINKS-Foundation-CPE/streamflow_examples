#!/usr/bin/env cwl-runner
cwlVersion: v1.1
class: Workflow
$namespaces:
  sf: "https://streamflow.org/cwl#"

inputs:
  source_file: File
  input_file: File

outputs:
  result:
    type: File
    outputSource: add/txt_file

steps:
  add:
    run: clt/add.cwl
    doc: |
      This step takes as input a python script file and a csv file. The script is launched, it reads the csv, adds the integers in it and print the result in a txt.
    in:
      source_file: source_file
      input_file: input_file
    out: [txt_file]