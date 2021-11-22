def check_if_injection_is_generated():
    try:
        with open('lib/injection.config.dart', 'r') as f:
            if not f.read():
                raise ValueError('injection.config is empty.')
    except IOError:
        raise FileNotFoundError("Unable to find injection file.")


if __name__ == '__main__':
    check_if_injection_is_generated()
