---
title: Free Random List Generator
description: A random list generator generates a list of items randomly from a given set of items
layout: libdoc/page

category: Randomization tools
order: 90
---

{% raw %}
<style>
  #input-box {
    width: 100%;
    height: 200px;
    font-size: 16px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    white-space: pre-wrap;
  }
  #generate-button {
    background-color: #4caf50;
    color: white;
    font-size: 16px;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  button:hover {
    background-color: #3e8e41;
  }
</style>

<p>Enter a list of elements, separated by line breaks:</p>
<form id="input-form">
  <textarea id="input-box" placeholder="Example data:&#10;Bob&#10;Robert&#10;Lisa&#10;Click to overwrite"></textarea>
  <button type="button" id="generate-button">Generate List</button>
</form>

<p><strong>Randomized List</strong> result is displayed below. Click Generate list again if you need to regenerate:</p>
<ul id="output-list">
  <!-- The generated list will be inserted here -->
</ul>

<script>
  const inputForm = document.getElementById("input-form");
  const inputBox = document.getElementById("input-box");
  const generateButton = document.getElementById("generate-button");
  const outputList = document.getElementById("output-list");

  generateButton.addEventListener("click", () => {
    // Split the input string into an array of items
    const inputText = inputBox.value.trim();
    if (inputText.length === 0) {
      return;
    }
    const items = inputText.split("\n");
    // Shuffle the array
    shuffleArray(items);
    // Clear the output list
    outputList.innerHTML = "";
    // Add each item to the output list as a list item
    items.forEach(item => {
      const li = document.createElement("li");
      li.textContent = item.trim();
      outputList.appendChild(li);
    });
  });

  function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }
</script>

<p style="text-align:center">
  <a href="https://s.click.aliexpress.com/e/_DeAVKgn?bz=300*250" target="_blank">
    <img width="300" height="250" src="https://ae01.alicdn.com/kf/S3619e57974f148d087c950fe497cdf55q/300x250.jpg" />
  </a>
</p>

{% endraw %}

## How Free Random List Generator works?

A random list generator is a tool or program that generates a list of elements randomly from a given set of elements. This can be useful for a variety of purposes, such as generating random samples for statistical analysis, creating random groups for experimental purposes, or simply for generating random lists of elements for fun.

There are many different ways to implement a random list generator, depending on the specific requirements and constraints of the task at hand. Common approaches include using a pseudo-random number generator, reworking a pre-existing list, or randomly selecting items from a larger pool of items.

In general, a good random list generator should produce lists that are truly random and do not exhibit any patterns or biases. It should also be able to process a wide range of sizes and types of entries, and should be efficient and easy to use.

Everything is open source and nothing will be used or recorded by us.

## How Random List Generator script works?

Here is a brief overview of how this HTML code works:

* The user enters a list of elements into the textarea element, separated by line breaks.
* When the user clicks the "Generate List" button, the click event is captured by the event listener.
* The event listener calls a function that splits the input string into an array of elements, using the line break character ("\n") as the separator.
* The function then shuffles the array of items using the Fisher-Yates shuffle algorithm.
* The function clears the output list, then adds each item to the output list as a list item element.
* The resulting HTML page will display a form for entering a list of elements, a button for generating a randomized version of the list, and an unordered list that displays the randomized list.

## Random List Generator script

The html code below shows how a free random list generator works

```html
<style>
  #input-box {
    width: 100%;
    height: 100px;
    font-size: 16px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    white-space: pre-wrap;
  }
  #generate-button {
    background-color: #4caf50;
    color: white;
    font-size: 16px;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  button:hover {
    background-color: #3e8e41;
  }
</style>

<p>Enter a list of elements, separated by line breaks:</p>
<form id="input-form">
  <textarea id="input-box" placeholder="Example data:&#10;Bob&#10;Robert&#10;Lisa&#10;Click to overwrite"></textarea>
  <button type="button" id="generate-button">Generate List</button>
</form>

<p><strong>Randomized List</strong> result is displayed below. Click Generate list again if you need to regenerate:</p>
<ul id="output-list">
  <!-- The generated list will be inserted here -->
</ul>

<script>
  const inputForm = document.getElementById("input-form");
  const inputBox = document.getElementById("input-box");
  const generateButton = document.getElementById("generate-button");
  const outputList = document.getElementById("output-list");

  generateButton.addEventListener("click", () => {
    // Split the input string into an array of items
    const inputText = inputBox.value.trim();
    if (inputText.length === 0) {
      return;
    }
    const items = inputText.split("\n");
    // Shuffle the array
    shuffleArray(items);
    // Clear the output list
    outputList.innerHTML = "";
    // Add each item to the output list as a list item
    items.forEach(item => {
      const li = document.createElement("li");
      li.textContent = item.trim();
      outputList.appendChild(li);
    });
  });

  function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }
</script>

```
