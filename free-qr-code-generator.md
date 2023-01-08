---
title: Free QR Code Generator
description: A free QR code generator is a tool that allows you to create QR codes for free
layout: libdoc/page

category: Marketing tools
order: 90
---

{% raw %}

<style>
  #text-input {
    width: 100%;
    font-size: 16px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    white-space: pre-wrap;
    margin-bottom: 10px;
  }

  #generate-button {
    width: 50%;
    text-align: center;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  #generate-button:hover {
    background-color: #45a049;
  }

  #qrCode {
    margin-top: 20px;
    margin-bottom: 50px;
  }
  </style>

<form onsubmit="createQRCode(); return false;">
  <label for="text-input">Enter text to encode in QR code:</label><br>
  <p style="text-align:center; margin:auto">
     <input type="text" id="text-input" name="text-input"><br>
     <input type="button" id="generate-button" value="Generate QR Code" onclick="createQRCode()">
  </p>
</form>

<p>Right click on QR code and "Save image as..."</p>
<div id="qrCode">
</div>

<script src="/assets/tools_getbestfree/js/qr/qrcode.min.js"></script>
<script>
function createQRCode() {
  var text = document.getElementById("text-input").value;
  var element = document.getElementById("qrCode");
  element.innerHTML = "";
  var qr = new QRCode(element, {
    text: text
  });
}
</script>

<p style="text-align:center">
  <a href="https://s.click.aliexpress.com/e/_DeAVKgn?bz=300*250" target="_blank">
    <img width="300" height="250" src="https://ae01.alicdn.com/kf/S3619e57974f148d087c950fe497cdf55q/300x250.jpg" />
  </a>
</p>

{% endraw %}

## What is QR Code Generator?

A QR code generator is a tool that allows you to create QR codes for free. QR codes are two-dimensional barcodes that can be scanned with a smartphone or QR code reader to access information or a website. You can use a free QR code generator to create QR codes for a variety of purposes, such as linking to a website, displaying text, or sharing contact information. To use a free QR code generator, you typically enter the information you want to encode in the QR code and the generator will create the QR code for you. You can then download or print the QR code for use.

## How QR Code Generator works?

A QR code generator script is a program written in a programming language, such as JavaScript, Python, or PHP, that generates QR codes from user input.

The basic steps for how a QR code generator script works are as follows:

1. The user accesses the script, typically through a web page with a form that allows them to enter the information they want to encode in the QR code.
1. The user submits the form, which sends the input data to the QR code generator script.
1. The script processes the input data and generates a QR code image using a library or API (Application Programming Interface) for generating QR codes.
1. The script sends the generated QR code image back to the user's web browser.
1. The web browser displays the QR code image on the page.

The specific implementation details of a QR code generator script will depend on the programming language and libraries or APIs used.

## How QR Code Generator script works?

This is an HTML file with a script that generates a QR code from user input. When the user enters text into the text input field and clicks the "Generate QR Code" button, the createQRCode() function is called.

The createQRCode() function does the following:

1. Gets the value of the text input field using the DOM method getElementById and the ID "text-input".
1. Clears the contents of the element with ID "qrCode" using the innerHTML property.
1. Creates a new instance of the QRCode object, which generates a QR code from the text input. It does this by taking two arguments: the element that will contain the QR code, and an object with the key-value pair of text: text.
1. The QR code is then displayed in the element with ID "qrCode".
1. The rest of the code consists of style rules for the layout and appearance of the form elements.

## QR Code Generator script

The html code below shows how a free QR Code Generator works. JS library is used from [https://github.com/davidshimjs/qrcodejs](https://github.com/davidshimjs/qrcodejs)

```html
<style>
  #text-input {
    width: 100%;
    font-size: 16px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    white-space: pre-wrap;
    margin-bottom: 10px;
  }

  #generate-button {
    width: 50%;
    text-align: center;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  #generate-button:hover {
    background-color: #45a049;
  }
  #qrCode {
    margin-top: 20px;
    margin-bottom: 50px;
  }
  </style>

<form onsubmit="createQRCode(); return false;">
  <label for="text-input">Enter text to encode in QR code:</label><br>
  <p style="text-align:center; margin:auto">
     <input type="text" id="text-input" name="text-input"><br>
     <input type="button" id="generate-button" value="Generate QR Code" onclick="createQRCode()">
  </p>
</form>

<p>Right click on QR code and "Save image as..."</p>
<div id="qrCode">
</div>

<script src="https://raw.githubusercontent.com/mkazinauskas/tools/main/assets/tools_getbestfree/js/qr/qrcode.min.js"></script>
<script>
function createQRCode() {
  var text = document.getElementById("text-input").value;
  var element = document.getElementById("qrCode");
  element.innerHTML = "";
  var qr = new QRCode(element, {
    text: text
  });
}
</script>

```
