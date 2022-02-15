# Approaches to building code

## The single developer model

When you have organic code development with no constraints:

1.  Work from the inside out. Increase the complexity and generality of your code as circumstances demand.
2.  Given (1), commit to rewriting your code on an ongoing basis.
3.  Use code organization (functions, objects, modules, etc.) to reduce cognitive overhead
    1.  Compartmentalizing your code makes it easier to navigate and understand
    2.  Code chunks that are truly done can be \"frozen\" as compartmentalized functions or modules, making it easier to reason about and rewrite the remaining code
4.  Preserve useful practices across projects by developing a standard approach and toolkit

## The collaborative model

### The fundamental problem of project management

According to [graph theory](https://en.wikipedia.org/wiki/Complete_graph), communication channels grow as the square of the number of people: n(n -1) / 2

-   2 people - 1 channel

![](./img/complete_graph_k2_240px.png)

-   3 people - 3 channels

![](./img/complete_graph_k3_240px.png)

-   4 people - 6 channels

![](./img/complete_graph_k4_240px.png)

-   5 people - 10 channels

![](./img/complete_graph_k5_240px.png)

-   8 people - 28 channels

![](./img/complete_graph_k8_240px.png)

-   12 people - 66 channels

![](./img/complete_graph_k12_240px.png)

### Coordination and planning

To scaffold from single person to a large project, you need coordination and planning for both your code **and** the people on your team.

#### Coordination and planning for code

1.  *Functional divisions*: Organize the code base into (somewhat) separable concerns. Each functional division should have a functional lead (the point person who makes sure that work moves forward). Depending on project size, they may be the only person.
2.  *Functional interfaces*: How do the functional pieces work together or communicate? This can be implicit (we all agree how it\'s going to work) or explicit (we write an API for different parts of the code to communicate). APIs are generally the hallmark of a large code base, and overkill for a small one. However, it\'s still important to think about how the parts of the project work together, because it requires explicit collaboration in the design and in determining what can be released when.

#### Coordination and planning for people

1.  Release schedule: What goes in what release? Who works on what?
2.  Integrating new team members
3.  Assigning new issues and bug fixes
4.  Repository management: Branching strategy, merging, tagging
5.  Test and release oversight: Have we done enough testing? Do we release with known bugs? Do we delay releases? Do we revisit these decisions as our hypothetical due date slips further into the past?

### However! Your planning process needs to be responsive to emerging needs and discoveries

![](./img/good_code_xkcd.png)
[xkcd comic](https://xkcd.com/844/)

#### You want to recapture some of that \"organic\" code development

1.  Versioned releases containing planned improvements and fixes (\"in 3.1, we will add...\").
2.  Rules for deprecation (e.g. overloading APIs, offering alternative APIs) as the project expands or changes.
3.  Community bug reports and feature requests.
4.  User field studies (telemetry is too narrow; what you really want are patterns of behavior. What irritates or stumps people when they try to use the code?).

#### You want to avoid doing unnecessary work

What\'s the difference between \"enough\" code organization and \"too much\" code organization? If you\'re making things that you\'ll never use, you\'re spending too much time organizing and not enough time doing. That\'s how you end up with [AbstractSingletonProxyFactoryBean](
<https://docs.spring.io/spring-framework/docs/2.5.x/javadoc-api/org/springframework/aop/framework/AbstractSingletonProxyFactoryBean.html).

![](./img/automation_xkcd.png)
[xkcd comic](https://xkcd.com/1319/)
