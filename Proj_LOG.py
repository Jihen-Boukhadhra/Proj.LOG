import logging
import time

logging.basicConfig(level=logging.INFO)

logger = logging.getLogger(__name__)

def main():
    while True:
        logger.info("This is a test log message")
        time.sleep(1)

if __name__ == "__main__":
    main()
