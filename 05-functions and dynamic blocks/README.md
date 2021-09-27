#### Functions and Dynamic Blocks

The Terraform language includes a number of built-in functions that you can call from within expressions to transform and combine values. The Terraform language does not support user-defined functions, and so only the functions built in to the language are available for use.

**Example of Functions**

    name   = join("_", ["sg", module.vpc.vpc_id])
            and
    user_data       = fileexists("script.sh") ? file("script.sh") : null
    
*main.tf line 25 and line no 52 respectively*
**more examples https://www.terraform.io/docs/language/functions/index.html**

A dynamic block acts much like a for expression, but produces nested blocks instead of a complex typed value. It iterates over a given complex value, and generates a nested block for each element of that complex value


**Dynamic block example**
    
     dynamic "ingress" {
        for_each = var.rules
        content {
          from_port   = ingress.value["port"]
          to_port     = ingress.value["port"]
          protocol    = ingress.value["proto"]
          cidr_blocks = ingress.value["cidr_blocks"]
        }
    }

*The block will use variables defined in variables.tf and variables uses complex variable (combination of collection and structrural variable types)*
    
A dynamic block acts much like a for expression, but produces nested blocks instead of a complex typed value. It iterates over a given complex value, and generates a nested block for each element of that complex value.

>The label of the dynamic block (**setting** in the example above) specifies what kind of nested block to generate.
The **for_each** argument provides the complex value to iterate over.
The **iterator** argument (optional) sets the name of a temporary variable that represents the current element of the complex value. If omitted, the name of the variable defaults to the label of the dynamic block ("setting" in the example above).
The **labels** argument (optional) is a list of strings that specifies the block labels, in order, to use for each generated block. You can use the temporary iterator variable in this value.
The nested **content** block defines the body of each generated block. You can use the temporary iterator variable inside this block.

**More resource: https://www.terraform.io/docs/language/expressions/dynamic-blocks.html**