# Improper Exception Handling in Dart Async Function

This repository demonstrates a common error in asynchronous Dart programming: improper exception handling. The example showcases a scenario where an exception is caught but not handled effectively, leading to a less-than-ideal user experience.

## The Bug

The `fetchData` function uses a `try-catch` block to handle potential exceptions during an HTTP request. However, the `catch` block simply prints an error message and rethrows the exception. This approach, while technically correct, lacks robustness and detail.  It doesn't provide informative messages to the user or attempt any recovery strategies. 

## The Solution

The improved solution provides more detailed error handling. It includes specific error checks, better error messages, and avoids simply rethrowing the exception when a more helpful action can be taken.