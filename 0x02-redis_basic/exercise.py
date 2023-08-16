#!/usr/bin/env python3
import uuid
import redis
from typing import Union

class Cache:
    '''
    Cache class.
    '''
    def __init__(self):
        '''
        Initializes a new instance of the Cache class.
        '''
        self._redis = redis.Redis()
        self._redis.flushdb()
    def store(self, data: Union[str, int, bytes, float]) -> str:
        '''
        Store the provided data
        '''
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key
