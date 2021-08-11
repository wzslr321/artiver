def check_if_injection_is_generated():
    try:
        with open('lib/injection.config.dart', 'r') as f:
            read_data = f.read()
            if not read_data:
                raise ValueError('injection.config contains no content')
            else:
                return
    except IOError:
        raise FileNotFoundError("Unable to find injection file.")


check_if_injection_is_generated()
