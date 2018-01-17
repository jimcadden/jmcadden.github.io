---
title: "Node & V8 JavaScript Execution"
date:  2018-01-01
reveal_transition: slide 
reveal_slideNumber: true
---

# Node & V8
## Isolated JavaScript Execution

---------------------------------------------------------------------

# Background 

==

## JavaScript is a class-free, object-oriented language

```
// hello world! 
function MyClass(arg) {
    this.arg = arg;
}

var foo = new MyClass('hello world!');
alert(foo.arg); // prints hello world! 
```

==

## JavaScript Origin

+ Originally from Netscape (web browser)
+ HTTP response contains both static (HTML) and dynamic (JavaScript) code 
+ JavaScript code is downloaded and processes **_client-side_**


---------------------------------------------------------------------

# V8 JavaScript Engine


==

## V8 JavaScript Engine

+ JavaScript "JIT" interpreter from Google `Chromium` 
+ Responsible for processing and executing JavaScript code
+ V8 C++ library, used for creating V8 instances _inside_ an application

==

## V8's "JIT" Procedure

+ JIT: plaintext script is parsed, compiled into bytecode immediately prior to execution 
+ The bytecode is run inside a "virtual" JavaScript runtime environment

==

## V8's Client API

```
#include "v8.h"

static char* src="function MyClass(arg){this.arg=arg;} \
  var foo=new MyClass('hello world!');                 \
  alert(foo.arg);"

auto exe = v8::Script::New(src)            // parse and compile src
auto retval = exe->Run();                  // executes src 
cout << retval.ToString() << endl;         // prints hello world!

```
==

## V8's Security Model 

+ Motivated by browser need of isolated JavaScript environments for windows/tabs
+ Also, avoid conflicts within webpage that execute various, unrelated JavaScript code (e.g, ads)
+ V8's API uses two primary isolation abstractions: **isolates** and **contexts**

==

## `V8::Isolate`

+ Isolates represent an "isolated instance" of a complete V8 _engine_ 
    + Incl. compiler, heap manager, garbage collector, execution mechanisms
+ Isolate operations are single-threaded (aka. not thread safe!)
+ Most V8's API methods in V8 an isolate (ref) as argument

== 

## `V8::Context`

+ Contexts allows separate, unrelated, JavaScript scripts to run in a single instance of V8 
+ Contexts represent a virtual JavaScript _execution environment_
    + Dedicated copies of JavaScript's built-in functions, utilities and "global" objects 
+ Compiled bytecode is _executed_ "inside" a V8 `context`
+ A context is associates with one-and-only-one Isolate
    + An isolate can manage many contexts

---------------------------------------------------------------------

# Node.js 

==

## Node.js 

+ JavaScript runtime for "_scalable server-side network applications_"
+ Consists of `node` (binary), plus a library of "node.js" JavaScript **modules**
    + HTTP, DNS, data streaming, RPC, etc.
+ Written C++, uses V8 internally

==

## `node` Execution Model

+ Local runtime application for node.js scripts
+ Event-driven, single-threaded (i.e, single event-loop)
+ Emphasis on asynchronous I/O and short-lived events
  + JavaScript callbacks, I/O devices, timers

== 

## demo.js

```
var http = require('http'); // node.js module
//create a server object:
http.createServer(function (req, res) {
  res.write('Hello World!'); //write a response to the client
  res.end(); //end the response
}).listen(8080); //the server listens on port 8080
```

#### `$ node demo.js`
#### `$ curl http://localhost:8080 | less`

==

## Node.js and V8 isolation

+ `node` executable includes the V8 library 
+ A single V8 isolate is used by the `node` process
+ By default, a single context used for all script execution
+ `node.js` modules provide interface for execution "sandboxes" (aka, `V8::Context`)

==

## Node.js `VM` Module

```
// my-sandbox.js
const vm = require('vm');
const my_code = "alert('hello world!');"
vm.runInNewContext(my_code)(); // run my_code in sandbox envoirnment
```

---------------------------------------------------------------------

# Caching in V8

==

## Caching in V8
+ JavaScript code be compiled, saved, and run later.
+ The V8 API _client_ is responsible for caching data 
    + e.g., `CacheData` returned after a successful compilation (optional)
    + No internal V8 compilation caching! 
+ V8 validates passed-in `CacheData`
    + check-summed with: V8's version, flag configuration, CPU features, and source string

==

## Performance Impact of Caching

![](https://image.ibb.co/bxek46/jsperf.png)

==

## Caching in Node.js 

+ Node.js `vm` module exposes `CacheData` as an optional arguments to `new vm.Script()` 
    + `cachedData` <Buffer> Provides an optional Buffer with V8's code cache data for the supplied source.

---------------------------------------------------------------------

# Next Steps

==

## EbbRT-Node-app

+ circa 2014/2015 port of Node.js & V8 to EbbRT native
+ Increase benchmark performance over Linux (OSDI'16)

![](https://preview.ibb.co/f88ZhR/Current_Research_on_Elasticity_3_001.jpg)


==

### Alt 1. 
#### Deploy `node` instances 

![](https://preview.ibb.co/mYP4xR/Current_Research_on_Elasticity_001.png)

==

### Alt 2. 
#### Deploy `V8::Isolates` and `V8::Context`  

![](https://preview.ibb.co/dX9CHR/Current_Research_on_Elasticity_2_001.jpg)


---------------------------------------------------------------------

# Finished

---------------------------------------------------------------------

# _Serverless_ Computing 

+ Applications as short-lived _handler_ function
+ Deployed in response to event 
+ Written in high-level language: 
  + Python
  + Ruby
  + Lua
  + **JavaScript (Node.js)**

---------------------------------------------------------------------

# Finished

