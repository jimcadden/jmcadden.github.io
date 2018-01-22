---
layout: page
title:  CS451/651 - Paper Reading Assessment 
description: Paper Reading Assessment for cs451/651
---

You will be responsible for completing a brief assessment **for each
paper** we cover this semester. Your response should be submitted *by 10pm*,
the evening prior to each lecture.  

#### Instructions:
1. Responses should be in your own words, and based on your own impression.
While it is OK to agree with the authors, you should not copy their language directly. 
2. Each responses should be brief, a paragraph being the maximum length.

#### Submitting
+ Submit your assessment in `.txt` format, using `gsubmit 451` on a csa* machine
+ Filenames should be in the formate `lec[N].txt`, where `N` is the corresponding lecture number.
+ **Reponses must submitted by 10:00pm**, the evening _before_ the corresponding lecture.

> ```
> // Example upload
> jmcadden@csa2.bu.edu:$ gsubmit cs451 lec1.txt
> ```

# Paper Assessment  
### I. Problem 
+ Provide a general problem statement for this work.
+ Using a _single word_, describes the general space that the problem (& solutions) belongs 
(e.g., _performance, security, programmability, correctness_, etc.).

### II. Approach 
+ Provide a concise **thesis statement** that describes papers approach
   towards the problem.
+ Describe at least one experimental hypothesis that supports this thesis, and how
  it was validated in the experiments described in the paper (when applicable).

### III. Relationship
+ Observe a way this paper relates to one-or-many of the papers we've already covered this semester.

### IV. Impression 
+ What are your major take-away(s) from reading this paper. 
+ Was there something that you found particularly surprising, facinating, unbelievable or confusing? (provide as many as you'd like)
+ Finally, rate the paper on a scale [1-10] (10 being best) and briefly explain your reasoning.
 

# Example Submission 

> **James Cadden**  
> Lecture #1  
> MapReduce: Simplied Data Processing on Large Clusters
> 
> ### I. Problem 
> Workloads that require many concurrent processors to complete carry
> additionals requirements to complete, namely, distributing the data across
> machines, coordinating the workers, and dealing with failure. These
> requirements add substantial and unforseen burdens onto the developer, the
> solutions to which require knowledge outside a general level of programming
> expertise.  One word, **_Programability_**
> 
> ### II. Approach 
> Much of the complexities of large-scale distributed programming can be
> alleviated by adopting a highly-restricted programming models, and a
> corresponding execution platform that manages distribution, communication
> and failures cases for each job.
>
> For data-intensive workloads the underlying platform must exhibit an
> appropriate degree of scale. In the experimentation section of the paper,
> the author's demonstrated the MapReduce platform scales to 
> 
> ### III. Relationship
> Not yet applicable (first paper!)
> 
> ### IV. Impression 
> By enforcing a restrictive programming model, the underlying platform can
> rely on guarantees that simplifies its target objective, which, in turn, can
> enable great functionality advantages for the users of the platform.  My
> rating is a 10 -- the paper presents an easy to understand idea that had an
> immediate and lasting impact on the fields of Big Data & Cloud Computing.
