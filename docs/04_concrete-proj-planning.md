# Concrete project planning

These are things which should be written as documentation during the project development phase. Writing this alongside your DMP will help develop the overall design.

(Project planning is all about checklists. There are no cool graphics for project planning).

## Governance

How are decisions made? Who makes them?

For large, complicated projects, decision-making responsibility can be distributed by expertise (consulting statistician, system administrator), accountability (grant PI, campus security officer), and/or authority (PI, funding source, multi-site project lead).

## Project checklist

1.  What are the **deliverables**? Code, analyses, figures, white papers, journal publications, etc. This constrains everything that follows.
2.  What is the **timetable** for the deliverables?
3.  Who are the **responsible parties** for each of the deliverables?
4.  What are the **dependencies**? For example: Data analysis requires data cleanup and validation, writing code, and testing the code.
5.  What are the **implied dependencies**?
    1.  Documentation
    2.  Testing
    3.  Backups
    4.  System administration (installation, upgrades, there\'s only one person who knows how to troubleshoot network errors, etc.)
    5.  Training

## Herding your cats

1.  By default, give everyone access to everything. If you can\'t do this, you have a new implied dependency: Security.
2.  Establish a common workflow for collaborating on code (e.g., \"we share all code in a private Github repository\")
3.  Establish a common workflow for collaborating on documents
4.  Large group? Delegate to team leads.

## Scheduling

A common conversation on development teams:

Q: \"How long will X take?\"

A: \"Four weeks\"

X is irrelevant. From this we learn that there are two kinds of schedules:

1.  Evidence-based schedules
2.  Lies

### Evidence-based scheduling

cf. <https://www.joelonsoftware.com/2007/10/26/evidence-based-scheduling/>

1.  Estimate task time
2.  Start the clock
3.  Complete the task
4.  Stop the clock
5.  Assess accuracy
6.  Weight new estimates

### Some comments on evidence-based scheduling

1.  You can estimate the task time using time or \"points\" (i.e. the relative size of tasks)
2.  Note the missing step: You don\'t stop the clock when you go off-task in (3). This is deliberate; your inability to predict interruptions is one of the major sources of estimation error.
3.  You can assess the accuracy of your schedule estimates by eyeball or by using regression, depending on your commitment to the bit.

### An aside about \"methodologies\"

There are many \"methodologies\" (Kanban, Agile, etc.). Just ignore them.

You have a pile of work.

1.  Try to organize the work in to bite-size chunks
2.  Try to keep track of who's doing what
3.  Try to do the important stuff first

### An aside about boiling the ocean

A common mistake is trying to build everything at once. Start small and build the code in a way that scales. Don\'t jump to the next level of complexity until you need it.

1.  <https://adamdrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html>
2.  <https://livefreeordichotomize.com/2019/06/04/using_awk_and_r_to_parse_25tb/>

# Development workflow in the abstract

## Choosing a language is choosing an ecosystem

Your workflow and available tools are depend in part on the language you\'re using, so let\'s talk about that for a minute before diving into more specifics.

![](files/language_ecosystem.svg)

### Language features

A language (and some of its libraries) is maintained by a core team, and has a sales pitch about what makes it neat in theory. However, the core language features are not enough; there are additional practical considerations:

1.  **Community**. This can include forums, documentation, Q&A sites, and other evidence of enthusiastic hobby and personal use. It\'s easy to find help on how to get started. There is evidence of continuing organic support for the language ecosystem.
2.  **Tools**. Features that make the language usable in day-to-day work, including: Code editor support, syntax highlighting, debuggers, profiling, tools for packaging and deployment, version control, testing, automated doc extraction, and integration with outside tools (web servers, databases, interchange formats like XML/JSON). Some of this will be included in Core Libraries.
3.  **Working deployments**. You see the language being used in real-world projects. The pitfalls for deployment, performance, and scaling are well-known and documented. The community has confidence in (mostly) bug-free operation. Edge cases, errata, and know bugs are documented. There is a community of understanding around how to use the tool effectively and avoid tarpits.

### When is a language ready?

![](files/programmer_migration.svg)

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

![](files/is_it_worth_the_time_2x.png)

-   <https://xkcd.com/1205/>

All code, tools, and management practices have an opportunity cost: The time you spend coding, supporting, teaching, and managing could have been spent doing something else. You should adopt tools that are a net benefit to your project.
