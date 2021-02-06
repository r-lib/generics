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

