# Development workflows in the abstract

## Choosing a language is choosing an ecosystem

Your workflow and available tools are depend in part on the language you\'re using, so let\'s talk about that for a minute before diving into more specifics.

![](./img/language_ecosystem.svg)

### Language features

A language (and some of its libraries) is maintained by a core team, and has a sales pitch about what makes it neat in theory. However, the core language features are not enough; there are additional practical considerations:

1.  **Community**. This can include forums, documentation, Q&A sites, and other evidence of enthusiastic hobby and personal use. It\'s easy to find help on how to get started. There is evidence of continuing organic support for the language ecosystem.
2.  **Tools**. Features that make the language usable in day-to-day work, including: Code editor support, syntax highlighting, debuggers, profiling, tools for packaging and deployment, version control, testing, automated doc extraction, and integration with outside tools (web servers, databases, interchange formats like XML/JSON). Some of this will be included in Core Libraries.
3.  **Working deployments**. You see the language being used in real-world projects. The pitfalls for deployment, performance, and scaling are well-known and documented. The community has confidence in (mostly) bug-free operation. Edge cases, errata, and know bugs are documented. There is a community of understanding around how to use the tool effectively and avoid tarpits.

### When is a language ready?

![](./img/programmer_migration.svg)

-   <https://apenwarr.ca/log/20190318>

In general, a language ecosystem will do some things well and other things poorly. Some examples:

1.  Julia: Good tools and community, but we don't see it widely deployed (this might be changing, watch this space)
2.  Rust: Checks all boxes, but don't have a lot of deployed examples for scientific computing **specifically**. Example of a promising ecosystem.
3.  Many proprietary statistics tools: Little to no organic support for integrating into a wider toolchain, which can be problematic from a purely practical standpoint.

## Co-dependence and feedback between tools and methods

1.  What is your goal?
2.  What products will you make to meet your goal?
3.  What tools are available?
4.  What decisions do you have to make given pre-existing constraints on, e.g., language, libraries, computing environments?
5.  How do you make decisions about workflow and tools? Does this fit into your overall decision-making process as described above?
6.  How much mixing of environments? outside API, databases, etc? Total compute needs? How flexible and/or expansive do you need to be? These issues are a blend of \"how many outside drivers are you willing to accept?\" and \"how much do you plan to grow?\"

## Tool evaluation

![](./img/is_it_worth_the_time_2x.png)

[xkcd comic](https://xkcd.com/1205/)

All code, tools, and management practices have an opportunity cost: The time you spend coding, supporting, teaching, and managing could have been spent doing something else. You should adopt tools that are a net benefit to your project.
