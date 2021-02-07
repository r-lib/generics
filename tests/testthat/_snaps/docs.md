# generics methods can be reexported and extended

    Code
      methods_rd("tidy")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testGenericsExtension}\n\\itemize{\n\\item \\code{\\link[testGenericsExtension]{tidy-special}}: \\code{special_method}\n}"

# multiple packages have multiple headers

    Code
      methods_rd("multi_method")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testMultiMethod}\n\\itemize{\n\\item \\code{\\link[testMultiMethod]{multi-method-2}}: \\code{default}\n\\item \\code{\\link[testMultiMethod]{multi-method-3}}: \\code{data.frame}\n}\n\\code{testMultiPackage}\n\\itemize{\n\\item \\code{\\link[testMultiPackage]{multi-method-4}}: \\code{matrix}\n}"

# S4 bullets print with no issues

    Code
      methods_rd("multi_method")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testS4Docs}\n\\itemize{\n\\item \\code{\\link[testS4Docs]{multi_method}}: \\code{ANY,ANY}, \\code{numeric,ANY}, \\code{numeric,integer}\n}"

# S4 and S3 packages can intermingle

    Code
      methods_rd("multi_method")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testMultiMethod}\n\\itemize{\n\\item \\code{\\link[testMultiMethod]{multi-method-2}}: \\code{default}\n\\item \\code{\\link[testMultiMethod]{multi-method-3}}: \\code{data.frame}\n}\n\\code{testS4Docs}\n\\itemize{\n\\item \\code{\\link[testS4Docs]{multi_method}}: \\code{ANY,ANY}, \\code{numeric,ANY}, \\code{numeric,integer}\n}"

# multiple methods but same rdname are comma separated

    Code
      methods_rd("same_rd_name")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testSameRd}\n\\itemize{\n\\item \\code{\\link[testSameRd]{same_rd_name-2}}: \\code{data.frame}, \\code{default}\n}"

# single method is correctly itemized

    Code
      methods_rd("single_method")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testSingleMethod}\n\\itemize{\n\\item \\code{\\link[testSingleMethod]{single-method-2}}: \\code{default}\n}"

# multiple methods are correctly itemized

    Code
      methods_rd("multi_method")
    Output
      [1] "See the following help topics for more details about individual methods:\n\n\\code{testMultiMethod}\n\\itemize{\n\\item \\code{\\link[testMultiMethod]{multi-method-2}}: \\code{default}\n\\item \\code{\\link[testMultiMethod]{multi-method-3}}: \\code{data.frame}\n}"

