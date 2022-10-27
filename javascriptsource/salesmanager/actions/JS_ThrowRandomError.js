// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
import "mx-global";
import { Big } from "big.js";

// BEGIN EXTRA CODE
async function waitFiveSecond() {
	let randomNumber = Math.floor(Math.random() * 100);

	return new Promise((resolve,reject) => {
		setTimeout(() => {
			if(randomNumber) {
				mx.ui.error("Something went wrong." + " " +  randomNumber.toString());
				return resolve();
			}

			return reject(new Error("random number couldn't be generated."))
		},5000)
	})
}

// END EXTRA CODE

/**
 * @returns {Promise.<void>}
 */
export async function JS_ThrowRandomError() {
	// BEGIN USER CODE
	const result = await waitFiveSecond();
	return result;
	// END USER CODE
}