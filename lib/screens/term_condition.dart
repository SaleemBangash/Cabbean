// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/screens/dashboard.dart';

import '../widgets/app_bar.dart';

// import 'dashboard.dart';
// import 'set_destination.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
        backgroundColor: Color(0xff272525),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            }
            //onPressed: () => Navigator.of(context).pop(),
            ),
        data: Text(
          'Terms And Condition',
          style: TextStyle(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.only(top: 20),
            color: Color(0xffEBEBEB),
            child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "These Standard Terms of Service (“Terms”) apply to the services (as defined below).  References in these Terms to “us” or “we” or “our” or “Cabbea” refers to CABBEA (SMC-PVT) LTD whose registered office is at G-10 Islamabad. References to “you” or “your” or “the Customer” refers to the party making a Ride Booking with us.  When placing a Ride Booking with us, you acknowledge and agree to the terms set out in these Terms.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Provision of Booking services",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Cabbea provides you with following booking services. The booking services include: ",
                          textAlign: TextAlign.justify,
                          style: TextStyle()),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	Accepting bookings made by you, which included via the Cabbea App, Website Booking Form or Phone bookings. But without prejudice Cabbea reserves the right at its sole and absolute discretion to decline any such booking and/or cancel an accepted booking. "
                        "\n• Accepting booking for Deliveries via our Cars or Bikee categories."
                        "\n• Keeping records of booking "
                        "\n• Keeping record of Data"
                        "\n• Remotely monitoring bookings "
                        "\n• Receiving and dealing with feedback and complaints",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Acceptance of terms & conditions",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "All customers are deemed to have read and accepted our terms of use and conditions. The terms of use and conditions extend to all passengers, companies or suppliers. By using our services, you agree to abide by all applicable laws in force from time to time and any regulations set out by the company. Cabbea may amend these terms of use and conditions from time to time. If any part of these terms and conditions are found to be invalid or legally unenforceable by a court or tribunal then the rest of these terms and conditions shall continue to apply",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Use of Cabbea’s services",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea vets its self-employed Cabbeans to ensure they are suitable and hold all necessary licenses and qualifications. You accept, however, that Cabbea is not responsible for the conduct or behavior of registered Cabbeans nor is Cabbea responsible for any harm or damage caused to you by a self-employed Cabbean. Customers who are unhappy with the service provided by a Cabbean should contact us at the first possible opportunity with sufficient details to allow their complaint/grievance to be investigated thoroughly and also can write down a detailed review for our working. You can send an email to support@cabbea.com. By using our services, customers undertake to defend Cabbea Ltd against any claim or legal proceeding against Cabbea Ltd by any person as a result of the customer's breach of any of Cabbea Ltd terms and conditions, as set out now or in the future.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Registration",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You agree to give accurate information about yourself when using the Cabbea platforms, such as when you register for an account you further agree to keep such information up-to-date.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Right to Cancel",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• You are allowed to Cancel 2 Rides in a day for a Genuine Reason as this might bare cost to the Cabbean who might already by o his/her way to your pick up location. So please keep focus while requesting for a ride."
                        "\n• Too many Cancellations might lead to blocking your account. You will have to get in touch with Our Support team for further investigations and review."
                        "\n• Cabbea if deemed necessary would implement Cancellation Charges in future. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Withdrawal of services",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•Cabbea reserves the right to terminate its services if any of the terms of use and conditions are breached."
                        "\n• If you misuse any of the services provided to you or if you harm or attempt to harm the reputation or goodwill of Cabbea, if legal proceedings are brought against you or if you do not pay a court judgment awarded against you on time."
                        "\n• You agree that Cabbea reserves the right to restrict or suspend our services to you at any given time, without any notice whatsoever if we believe you have breached any of our terms and conditions. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("COVID 19:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Currently, the Government is making all-out efforts to deal with a rapidly evolving situation which is a challenge, not only for Pakistan but the whole world – and ensuring that we take proactive, comprehensive, and coordinated steps even when are Not In Ride."
                        "As Customer or A Cabbean, it is our duty to keep Us and everyone Safe from Corona Virus and it’s Variants. For that, we need to make sure:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	We Wear A mask throughout the Ride "
                        "\n• Use of Hand Sanitizer. Please share with one another if and when required"
                        "\n• If weather permits than keep the Car windows down for ventilation "
                        "\n• Use AC when it’s hot to circulate air within the Car"
                        "\n• Try to keep passengers’ numbers to 3. "
                        "\n• Do not shake hands"
                        "\n• Do not Drive or Take Ride, while you are having Fever, Flu or Cough"
                        "\n• Keep a fair distance while conversing.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Food, Drink, Tobacco and Arms",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Consumption of food and drink is not permitted in vehicles booked through Cabbea. Smoking and the consumption of illegal substances is prohibited in vehicles booked via Cabbea Ltd. Intoxicated persons may be refused carriage, and the booking is liable for cancellation. Moreover, carrying of weapons of any kind is also strictly prohibited and might be reported to the Law Enforcing Agencies of Pakistan.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Damage to vehicle",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You are responsible for the cost of repair for damage to, or necessary cleaning of the Cabbeans' vehicle and property resulting from use of the services under your account in excess of normal wear and tear, damages and essential cleaning known as Repair or Cleaning. In the event, that Cabbean provides a report in need for Repair or Cleaning. Cabbea approves such Repair or Cleaning request in our reasonable discretion, we reserve the right to facilitate payment for the reasonable cost of such Repair or Clean on behalf of the Cabbean using your payment method designated in your account. Such amounts will be transferred by Cabbea to the applicable Cabbean and are non-refundable.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Minor Customers",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "18 years and above can make an ID on Cabbea’s platform. So if a customer below 18 turns out to be a passenger than it will not be the Responsibility of Cabbea or the Cabbean in case of any mishap. It is recommended that a person who is above 18 should accompany such passengers. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Luggage",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Luggage is limited to the maximum weight capacity of the vehicle. You must inform Cabbean beforehand if you believe your luggage may exceed the maximum weight capacity. Care is taken when handling customer luggage, although customers are advised to label their property. All customer property is carried at the customer’s risk, and Cabbea Ltd nor the Cabbean accepts no responsibility for loss or damage suffered. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Anti-Discrimination Policies:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea strictly discourages any sort of Discrimination either from a Cabbean or from the Customer’s end. Any such incident reported to Cabbea can lead to Account Deactivation:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	Age "
                        "\n• Race"
                        "\n• Color "
                        "\n• Religion or Sect"
                        "\n• Gender: Male or Female. "
                        "\n• Unnecessary talks that may flare up the other person."
                        "\n• Physical or Mental disability"
                        "\n• Marital Status",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "And any other such discrimination that can lead to a dispute amongst the Cabbean and the Customer.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Lost Property",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "If you lose your luggage or your personal belongings you must raise this with your Cabbean immediately. Cabbea Ltd accepts no responsibility for lost or damaged luggage. You can file a lost property report by emailing us: support@cabbea.com. If you have the trip ID or booking reference add that to your email or phone call",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Unforeseen Circumstances",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea accepts no responsibility for events beyond our control which affect your journey or our ability to provide you with services you would otherwise reasonably expect of us. Such activities include (but are not limited to) war or the threat of war, riots, civil unrest, strikes, industrial action, acts of terrorism, natural disaster, fire, unforeseen technical problems, road closure or adverse weather conditions. Cabbea accepts no responsibility for any additional costs which may be incurred by you under such circumstances, such as loss of earnings or unforeseen expenditure. Customers are responsible for ensuring they book a Ride through Cabbea in a manner which allows them to reach their intended destination on time. Cabbea will not accept responsibility or liability for actions or events outside of its control which result in the customer reaching their destination late.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Our liability",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The material displayed on our site and in our smartphone app is provided without any guarantees, conditions or warranties as to its accuracy. To the extent permitted by law, we hereby expressly exclude all conditions, warranties and other terms, which might otherwise be implied by statute, common law or the law of equity. Any liability for any direct, indirect or consequential loss or damage incurred by any user in connection with our site or connection with the use, inability to use, or results of the use of our site, any websites linked to it and any materials posted on it, including loss of income or revenue; loss of business; loss of profits or contracts; loss of anticipated savings; loss of data; loss of goodwill; wasted management or office time; and whether caused by tort (including negligence), breach of contract or otherwise, even if foreseeable. This does not affect our liability for death or personal injury arising from our negligence, nor our liability for fraudulent misrepresentation or misrepresentation as to a fundamental matter, nor any other liability which cannot be excluded or limited under applicable law. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Liability",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea accepts no liability for any loss or damage, save as provided for by law. The Contracts (i.e. The Rides) are made between Customers and registered Cabbeans and any liability will arise on the part of the registered Cabbean.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Payment",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	With so many options to pay to Cabbean, it is your duty to pay him the Fare as soon as ride is completed."
                        "\n•	Do not pay Less to the Cabbean as this is their hard earned money."
                        "\n•	Cabbea does not designate any portion of your payment as a tip or gratuity to the Cabbean."
                        "\n•	Make sure you carry Change, so that minimum issues arise."
                        "\n•	You can pay in cash or by using Easypaisa app in your App Wallet."
                        "\n•	Any Tax levied by Government in future would be charged in your Fare."
                        "\n•	Credit/Debit Card payments are not allowed till further notice.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Promotional Codes & Discounts",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	Cabbea will be from time to time sending the users or potential users available promotions of the time. The promotions are in no relation to the agreement you have with Cabbea. Promotions will be available with codes saying “PROMO CODES”. Cabbea reserves the right to withhold or deduct credits obtained through the promotion in the event of the receipt of the credit obtained through the code was in error or through fraudulent means or in violation of the terms of the agreement."
                        "\n•	You agree that the promo codes would only be used for the intended purpose and will not be duplicated, sold or transferred in any manner or be made available to the general public, unless permitted by Cabbea. They are also not valid for cash and may expire prior to your use."
                        "\n•	As part of your account, Cabbea may provide you a referral code which is allowed to distribute among friends, family or other persons to become a new user or a new Cabbean."
                        "\n•	From time to time, incentives in the form of discounts will also be made available and Cabbea sets the amount, incentive type, terms and requirements in its sole discretion. You may not sell, trade or barter your codes as well as from advertising your codes in any public channels which includes all social media channels. Cabbea reserves the right to invalidate or disable the code any time in its own sole discretion.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Complaints",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea is committed to high levels of customer service and we welcome feedback. If you have any comments, complaints or suggestions then please email them to support@cabbea.com. Our customer service team will endeavor to acknowledge your email within 48 hours and to provide a full reply within five working days.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Collection",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Customer bookings are liable for cancellation if the customer fails to make themselves available at the pick-up point at the agreed time. As a customer, it is your obligation to make yourself readily available from the pick-up point requested upon booking. If you are found to be providing Cabbea with false information regarding your booking, e.g. pick up point, the number of passengers or general misconduct of the service on a repeated basis then we may terminate your ability to use our service. Once you have received notification of the Cabbean waiting outside of the pick-up point, you are advised to make contact with the Cabbean at the earliest opportunity within the 5 minutes waiting time. The Cabbean will do their utmost to contact you within the 5 minutes waiting time. However, the Cabbean will contact you one last time after the 5 minutes waiting time has expired, before they cancel your booking request if no contact has been made by you, the customer with the Cabbean.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Use of Software and Web Services",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Access to our site and smartphone app is permitted on the basis that we reserve the right to withdraw or amend the services we provide via our site and smartphone app without notice. We will not be liable if for any reason our site is unavailable, or our smartphone app is not functional at any time or for any period. From time to time, we may restrict access to some parts of our site, or our entire site, to users who have registered with us. If you choose, or you are provided with, a user identification code, password or any other piece of information as part of our security procedures, you must treat such information as confidential, and you must not disclose it to any third party. We have the right to disable any user identification code or password, whether chosen by you or allocated by us, at any time, if in our opinion you have failed to comply with any of the provisions of these terms of use. You are also responsible for ensuring that all persons who access our site through your internet connection are aware of these terms and that they comply with them. You must not misuse our site or smartphone app by knowingly introducing viruses, Trojans, worms, logic bombs or other material which is malicious or technologically harmful. You must not attempt to gain unauthorized access to our site, the server on which our site is stored or any server, computer or database connected to our website. You must not attack our site via a denial-of-service attack or a distributed denial-of-service attack. By breaching this provision, you would commit a criminal offence under the Cybercrime Laws of Pakistan. We will report any such breach to the relevant law enforcement authorities, and we will cooperate with those authorities by disclosing your identity to them. In the event of such a breach, your right to use our site will cease immediately. We will not be liable for any loss or damage caused by a distributed denial-of-service attack, viruses or other technologically harmful material that may infect your computer equipment, computer programs, data or other proprietary material due to your use of our site or to your downloading of any material posted on it, or on any website linked to it. You agree not to upload content to Cabbea’s website which is unlawful, offensive, obscene, harassing, threatening, abusive, defamatory, slanderous, pornographic or violates any intellectual property rights or rights to privacy of any third party or group. You agree not to upload any material which could be deemed offensive on the basis of gender, race, age, disability, or religion. You agree not to promote your own products or services or those of any third party. Cabbea Ltd reserves the right to monitor any uploaded content at any time, in any form whatsoever.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Text Messaging known as (SMS)",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By creating an account, or using Cabbea’s services and platforms, you agree that the service may send you text messages as part of the standard business operations of your use of the services. You may opt out of marketing messages however this will impact your use of the services and missing importation notifications about your account, security and delivery of services of goods.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Linking to our Websites",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Our website must not be framed on any other site, nor may you create a link to any part of our site other than the home page. Cabbea reserves the right to take necessary actions on linking with our website without notice. If you wish to make any use of material on our site other than that set out above, please contact us with the relevant details.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Linking from our Website",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Where our website contains links to other sites and resources provided by third parties, these links are provided for your information only. We have no control over the contents of those sites or resources, and accept no responsibility for them or for any loss or damage that may arise from your use of them.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Intellectual property rights",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "We are the owner of all intellectual property rights in our site and smartphone app and in the material published therein. Those works are protected by copyright laws and treaties around the world. All such rights are reserved. You may print off one copy and may download extracts, of any page(s) from our site for your reference, and you may draw the attention of others within your organization to material posted on our website, social media, marketing, app design or any other part of the Cabbea Business. You must not modify the paper or digital copies of any materials you have printed off or downloaded in any way, and you must not use any illustrations, photographs, text, communications, video or audio sequences or any graphics separately from any accompanying text. Our status as the authors of material on our site must always be acknowledged. You must not use any part of the materials on our website for commercial purposes without obtaining a license to do so from us beforehand. If you print off, copy or download any part of our site in breach of these terms of use, your right to use our site will cease immediately and you must, at our option, return or destroy any copies of the materials you have made.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Revisions in Terms",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "We may revise these terms of use at any time by amending this page. You are expected to check this page from time to time to take notice of any changes we made, as they are binding on you. Some of the provisions contained in these terms of use may also be superseded by provisions or notices published elsewhere on our site",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Jurisdiction",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "All disputes that cannot be settled amicably between the customer and Cabbea Ltd will be subject to exclusive jurisdiction of the courts of Islamic Republic of Pakistan.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Note: Please feel free to contact at info@cabbea.com or support@cabbea.com",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ))),
          ),
        ));
  }
}
