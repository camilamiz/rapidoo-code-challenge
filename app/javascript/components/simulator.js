// function simulatorFunction() {
//   const simulatorButton = document.getElementById("simulator-button");

//   simulatorButton.addEventListener("click", function() {
//     const invoiceValue = document.getElementById("invoice-value").value;

//     const simulatorReceivable = document.getElementById("simulator-receivable");
//     const simulatorRate = document.getElementById("simulator-rate");
//     const invoiceTerms = document.getElementById("invoice-terms").value;


//     let rate = (terms) => {
//       let i = 0.0165;

//       return (Math.ceil(terms / 10)) * i
//     }


//     let receivable = (invValue, rateValue) => {
//       return invValue * (1 - rateValue)
//     }

//     simulatorRate.innerHTML = 'Valor da taxa: ' + ((rate(invoiceTerms))*100).toFixed(2) + '%';
//     simulatorReceivable.innerHTML = 'Valor a receber: R$' + receivable(invoiceValue, rate(invoiceTerms));
//   });
// }
// export { simulatorFunction };
