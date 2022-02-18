#!/usr/bin/env cwl-runner
cwlVersion: v1.1
class: Workflow
$namespaces:
  sf: "https://streamflow.org/cwl#"

inputs:
  source_file_add: File
  source_file_merge: File
  input_file1: File
  input_file2: File

outputs:
  result1:
    type: File
    outputSource: add1/txt_file
  result2:
    type: File
    outputSource: add2/txt_file
  result3:
    type: File
    outputSource: add3/txt_file
  result_csv:
    type: File
    outputSource: merge/csv_file

steps:
  add1:
    run: clt/add.cwl
    doc: |
      This step takes as input a python script file and a csv file. The script is launched, it reads the csv, adds the integers in it and print the result in a txt.
    in:
      source_file: source_file_add
      input_file: input_file1
    out: [txt_file]
  add2:
    run: clt/add.cwl
    doc: |
      This step takes as input a python script file and a csv file. The script is launched, it reads the csv, adds the integers in it and print the result in a txt.
    in:
      source_file: source_file_add
      input_file: input_file2
    out: [txt_file]
  merge:
    run: clt/merge.cwl
    doc: |
      This step takes as input two txt files resulting from add steps and merge their content in a csv file.
    in:
      source_file: source_file_merge
      input_file1: add1/txt_file
      input_file2: add2/txt_file
    out: [csv_file]
  add3:
    run: clt/add.cwl
    doc: |
      This step takes as input a python script file and a csv file. The script is launched, it reads the csv, adds the integers in it and print the result in a txt.
    in:
      source_file: source_file_add
      input_file: merge/csv_file
    out: [txt_file]