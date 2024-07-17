# Markdown features

This site is intended to support [GitHub flavored markdown](https://github.github.com/gfm/).

In more detail, this means that [CommonMark](https://spec.commonmark.org/0.31.2/) syntax is supported, plus a few additional features, like tables and [Mermaid diagrams](https://mermaid.js.org/). Some of these features are detailed below.

## Images

Markdown images are supported. Relative paths should be used to reference images.

Smaller images are rendered at their native pixel width. Larger images will be scaled down to fit the width of the content area. Image aspect ratios should always be preserved.

![Example logo image](./example-image.png)

## Code Blocks

Code blocks with syntax highlighting are supported. A full list of supported languages can be found in the [Pygments documentation](https://pygments.org/languages/). An example using the `hcl` language is rendered below.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
```

## Mermaid diagrams

This site supports [Mermaid diagrams](https://mermaid.js.org/) in the same way as GitHub. Mermaid diagrams are authored in code blocks with the language metastring set to `mermaid`, and those code blocks are rendered as diagrams.

````markdown
```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
````

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

## Tables

Tables can be written in GitHub flavored markdown format. For more information, see the [GitHub Flavored Markdown documentation on Tables](https://github.github.com/gfm/#tables-extension-).

| Table        | Header            |                Row |
| :----------- | ----------------- | -----------------: |
| Cell content | More cell content | Another table cell |

## Autolinks

Note that [autolinks](https://github.github.com/gfm/#autolinks-extension-) are _not_ supported. For example, `https://example.com` will _not_ be rendered as a link, as it might be in other GitHub flavored markdown contexts.

Instead, you can write either:

- `[https://www.example.com](https://www.example.com)`: [https://www.example.com](https://www.example.com)
- `<https://example.com>`: <https://example.com>
