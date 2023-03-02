#!/bin/bash

ingredients="chicken beef lamb vegetables tofu"

echo "Enter the kebab ingredients, separated by spaces:"
read user_ingredients

IFS=' ' read -ra arr <<< "$user_ingredients"

is_vegetarian=true

for i in "${arr[@]}"
do
  if [[ ! " ${ingredients[@]} " =~ " ${i} " ]]; then
    is_vegetarian=false
    break
  fi
done

if [ "$is_vegetarian" = true ]; then
  echo "The kebab is vegetarian."
else
  echo "The kebab is not vegetarian."
