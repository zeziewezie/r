#!/bin/bash
ls -l | awk 'NR > 1 && NR % 2 == 0'


# Explanation:
# NR > 1: This skips the first line ("total").
# R % 2 == 0: This ensures that only even-numbered lines are displayed, starting from the second line after "total".