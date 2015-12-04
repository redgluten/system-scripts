// Today’s date
// ============

var today = new Date()
var dd = today.getDate()
var mm = today.getMonth()+1 //January is 0!
var yyyy = today.getFullYear()

if (dd < 10) {
    dd='0'+dd
} 

if (mm < 10) {
    mm='0'+mm
} 

today = dd+'/'+mm+'/'+yyyy


// Mail's content
// ==============

Mail = Application('Mail')

content = "Project \n"
	+ "- "

msg = Mail.OutgoingMessage({
    subject: "Daily Activity Record " + today,
    content: content,
    visible: true
}).make()


msg.toRecipients.push(Mail.Recipient({
	name: "Bowser", 
	address: "bowser@mushroomkingdom.com"
}))

msg.ccRecipients.push(Mail.Recipient({
	name: "Boo",
	address: "boo@mushroomkingdom.com"
}))

msg.ccRecipients.push(Mail.Recipient({
	name: "Goomba",
	address: "goomba@mushroomkingdom.com"
}))


Mail.activate()
