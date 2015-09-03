# Another example Binder with a Dockerfile

A Binder-compatibible repository that contains its own Dockerfile.

In this example, our Dockerfile does two things: it installs the library `graph-viz`, and also installs the Python client for this library using a `requirements.txt` file. Making this kind of build with Binder currently requires a custom `Dockerfile`, but this example hopefully makes clear how to achieve the result.

Thanks for Matthew Rocklin (@mrocklin) for asking about this use case and inspiring this example.
