---
layout: page
title:  CS451/651 - Paper Reading Assessment 
description: Paper Reading Assessment for cs451/651
---

This semester you will be responsible for writing a brief assessment
**for each paper** we cover. You should submitted your assessment *by 10pm*,
the evening prior to each lecture.  

#### Instructions:
1. Responses should be brief, roughly a paragraph in length for each of
   sections detailed below.
1. Responses should be entirely in your own words, based on your own impressions.
While it is OK to agree with the authors, you should not copy their language directly. 

#### Submitting
+ Submit your assessment in `.txt` format using [gsubmit](https://www.cs.bu.edu/teaching/hw/gsubmit/) on one of the csa* machines.
+ Filenames should be in the format `lec[N].txt`, where `N` is the corresponding lecture number.
+ Assessments must **submitted by 10:00pm**, the evening _before_ the corresponding lecture.

> ```
> // Example upload
> jmcadden@csa2.bu.edu:$ gsubmit cs451 lec1.txt
> ```

# Paper Assessment  
### I. Problem 
+ Give a general problem statement for this work.
+ Select a _single word_ that describes the general area this problem (and it's solutions) belongs in.
(e.g., _performance, security, programmability, correctness_, etc.).

### II. Approach 
+ Provide a concise **thesis statement** that captures the authors' approch and solution
+ Describe at least one experimental hypothesis that supports this thesis, and how
  it was validated through the experiments described in the paper (when applicable).

### III. Relationship
+ Observe one way this paper relates to one-or-many of the papers we've already covered this semester.

### IV. Impression 
+ What is your major take-away(s) from reading this paper?
+ Was there one thing in particular you found surprising, interesting, far-fetched or confusing? (give as many as you'd like)
+ Finally, rate the paper on a scale [1-10] (10 being best) and briefly explain why.
 

# Example Submission 

> **James Cadden**  
> Lecture #1  
> MapReduce: Simplied Data Processing on Large Clusters
> 
> ### I. Problem 
> Workloads that can benifit from many concurrent processors carry with it the
> the additionals requirements of partitioning and distributing the work,
> coordinating task amoung workers, load balancing,  and dealing with
> unforseen failures. These requirements add substantial complexity, and
> requires experties outside that of the average develolper.  One a word, this
> is a problem of _programability_.
> 
> ### II. Approach 
> Much of the complexities introduced by large-scale distributed computation
> can be alleviated by adopting a highly-restricted programming models, which
> enables application logic to be easily partitioned, coordination and
> replicated across pools of generic workers.  For this to be realized, the
> underlying platform must exhibit the the potential for large scale
> computations. In the experimentation section of the paper, the author's
> demonstrated the MapReduce platform sorting terebytes of data across 3600
> processors.
> 
> ### III. Relationship
> Not yet applicable (first paper!)
> 
> ### IV. Impression 
> By enforcing a restrictive programming model, the underlying platform can
> rely on guarantees that simplifies its target objective, which, in turn, can
> enable functionality advantages for the users of the platform.  This paper
> presents an easy to understand idea that had an immediate and lasting impact
> on the fields of Big Data & Cloud Computing. My rating is a 9.
