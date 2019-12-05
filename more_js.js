// function reverse(string) {
//   var stringArray = string.split("");
//   var newArray = [];
//   var index = stringArray.length - 1;
//   while (index >= 0) {
//     newArray.push(stringArray[index]);
//     index--;
//   }
//   var reversedString = newArray.join("");
//   return reversedString;
// }

// console.log(reverse("zombie"));

// function frequency(string) {
//   var stringArray = string.split("");
//   var letterFrequency = {};
//   stringArray.forEach(function(letter) {
//     if (letterFrequency[letter]) {
//       letterFrequency[letter]++;
//     } else {
//       letterFrequency[letter] = 1;
//     }
//   });
//   return letterFrequency["a"];
// }

// console.log(frequency("mathematics"));

// function search(array, integer) {
//   var index = 0;
//   var result = null;
//   while (index < array.length) {
//     if (array[index] === integer) {
//       result = index;
//       break;
//     }
//     index++;
//   }
//   return result;
// }

// console.log(search([1, 2, 3, 4, 5, 6, 7, 8, 9], 5));

// function insert(array, integer) {
//   var index = 0;
//   var newArray = [];
//   while (index < array.length) {
//     if (array[index] < integer) {
//       newArray.push(array[index]);
//     } else {
//       break;
//     }
//     index++;
//   }
//   newArray.push(integer);
//   while (index < array.length) {
//     newArray.push(array[index]);
//     index++;
//   }
//   return newArray;
// }

// console.log(insert([1, 3, 5, 7, 9], 5));

function even(number) {
  if (number % 2 === 0) {
    return true;
  } else {
    return false;
  }
}

function highOrLow(array, integer) {
  var isEven = even(array.length / 2);
  console.log(isEven);
}

highOrLow([1, 3, 5, 7, 9], 5);