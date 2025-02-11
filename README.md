# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and provides a solution.

## The Bug
The `fetchData` function fetches data from a remote API.  While it includes a `try-catch` block to handle potential errors, the error handling is insufficient. The error is only printed to the console, and the exception is rethrown.  In a production application, this might not be sufficient; it could lead to unexpected behavior or crashes if not properly managed.