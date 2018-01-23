---
layout: page
title:  CS451/651 - Paper Reading Assessment 
description: Paper Reading Assessment for cs451/651
---

This semester you will be responsible for completing a brief written assessment
**for each paper** that you've been assigned. Assessments should be submitted *by 10pm*,
the evening _prior_ to each lecture.  

### Instructions:
1. Your assessment should touch upon each the following topics: **the
   problem, the approach, the relation, and your impression**. 
1. Your response should be short and concise, roughly one paragraph in length per topic. 
1. Responses should be entirely in your own words, based on your own impressions from the reading. 
(While it is OK to agree with the authors, you should not copy their language directly!)

### Tips
+ I've provided a starting point for each topic below, plus an example for MapReduce. 
+ Take your time while reading, and think about the questions as you. It can take an
  experienced PhD student 2-3 hours minimum to fully read a paper. Don't rush!
+ The writing process should be relatively quick. If you are spending
  more than 30 minutes doing the assessment, you're likely writing too much! 

## Submitting
+ Submit your assessment in all-text (`.txt`) format using [gsubmit](https://www.cs.bu.edu/teaching/hw/gsubmit/) on one of the csa* machines.
+ Filenames should be in the format `lec[N].txt`, where `N` is the corresponding lecture number (see the lecture calendar).
+ Always use `cs451` as the class for the gsubmit command, even if you are enrolled in `cs651`
+ Assessments must **submitted by 10:00pm**, the evening _before_ the corresponding lecture.

> ```
> // Example upload
> jmcadden@csa2.bu.edu:$ gsubmit cs451 lec1.txt
> ```

# Paper Assessment  
### I. Problem 
+ Give a general problem statement for this work.
+ Is there a _single word_ that describes the general problem-area this paper belongs too?
(e.g., _performance, security, programmability, correctness_, etc.).

### II. Approach 
+ Provide a concise **thesis statement** that captures the authors' approch and solutions
+ Identify one or two of the author's experimental hypotheses that support this thesis, and describe how/if
  they were validated by the results described in the paper (when applicable).

### III. Relation
+ Observe how this paper relates to one (or multiple) of the papers we've already covered this semester. Just one or two observations will do, not need to list them all.

### IV. Impression 
+ What are your major take-away(s) from reading this paper?
+ Was there something in particular that you found surprising, interesting, far-fetched, or confusing? (give as many as you'd like)
+ Finally, I'd like you to rate the paper on a scale [1-10] (10 being best) and briefly explain why.
 

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
> requires experties outside that of the average develolper.  This
> is a problem of _programmability_.
> 
> ### II. Approach 
> Much of the complexities introduced by large-scale distributed computation
> can be alleviated by adopting a highly-restricted programming models, which
> enables application logic to be easily partitioned, coordination and
> replicated across pools of generic workers.  For this to be realized, the
> underlying platform must exhibit the capability for large scale
> workloads. In the experimentation discussined in the paper, the author's
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
