// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/screens/dashboard.dart';

import '../widgets/app_bar.dart';

// import 'dashboard.dart';
// import 'set_destination.dart';

class InRidePolicies extends StatefulWidget {
  const InRidePolicies({Key? key}) : super(key: key);

  @override
  State<InRidePolicies> createState() => _InRidePoliciesState();
}

class _InRidePoliciesState extends State<InRidePolicies> {
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
          'InRide Policies',
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
                        "Cabbea strives to build a healthy and respectable relationship between our Cabbeans and our Customers. Our aim is to build our services in such a way that all of our stakeholders are happy and aligned with Cabbea’s policies and procedures. To ensure best customer experience, here are few In-Ride Policies that will help us to reach our goal:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Be Kind to Cabbean:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "• Don’t be shy to say Greeting first."
                          "\n• Meet Cabbean with a smile and respect."
                          "\n• Cabbean’s priority is to get you to your destination with safety so please be mindful of any activity that can distract Cabbean while driving."
                          "\n• Always check the Car’s Number plate before you sit.",
                          textAlign: TextAlign.justify,
                          style: TextStyle()),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Cabbean’s Car:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• Keeping Cleanliness during your ride should be your utmost priority."
                        "\n• The car you would travel in is an asset of the Cabbean and you should respect the same."
                        "\n• Avoid littering, not eating in the car, not smoking and banging the doors or any other activity that can damage the car, must be avoided."
                        "\n• Seating Capacity in every car is for 4 persons. In case of excessive passengers, please ask for Cabbean’s permission."
                        "\n• Share any relevant details like if you are carrying Luggage or pets"
                        "Note: “Car damages caused by Customers must be compensated by Customers”",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Cabbeans owns the Fare:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	With so many options to pay to Cabbean, it is your duty to pay him the Fare as soon as ride is completed."
                        "\n• Do not pay Less to the Cabbean as this is their hard earned money."
                        "\n• Make sure you carry Change, so that minimum issues arise."
                        "\n• Use your easy paisa accounts to make payments as allowed by Cabbea.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Accurate Ride Details:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	You should keep Pick up and drop off locations as accurate as possible."
                        "\n• If you wish to travel further than your drop off location than additional fare will be charged as per Matrix."
                        "\n• You should call Cabbean if you observe that he is failing to understand your location."
                        "\n• Save your pick up location if it the same you often use."
                        "\n• If you want to add Stopover, please let the Cabbean know in advance. Stopover will be charged as per Fare Matrix.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Avoid Cancellations:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• Once Cabbean is on his way to your pick up point, please make sure you are ready to hop in as soon as Cabbean arrives."
                        "\n• Cabbean’s wait time is 5 minutes. In case you are late than please make sure Cabbean is informed so that he can wait for you. "
                        "\n• Customers are allowed to Cancel 3 Rides in a Day."
                        "\n• On 4th Cancellation, whichever the reason may be, their ID will be blocked till further Notice as cancellation has a cost on Cabbean to pay",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Toll Plaza and Parking Fee:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• During your ride, all Tolls and Parking fees would be yours to pay."
                        "\n• Remember this is your ride and you should avoid Cabbean being charged for such Fees.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Once Ride is Finished:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• Before you leave the car, please make sure to carry all your stuff with you as Cabbea or the Cabbean would not be responsible for your lost items."
                        "\n• However, we will help you to get them back if reported in time by you or the Cabbean."
                        "\n• Thank and Rate your Cabbean once ride is finished."
                        "\n• Rating a Cabbean is important because it can affect their earnings a lot."
                        "\n• In case of any dispute, please get in touch with our Customer Services within 2 Weeks of your Date of the Ride. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Don’ts in a Ride:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• No Drugs"
                        "\n•	No Alcohol"
                        "\n•	No Weapons"
                        "\n•	Do not ask Cabbean to drive rashly if you are in a hurry as it may risk so many lives. Better to reach late than Never."
                        "\n•	Do not sit without a Mask and Seatbelt"
                        "\n•	Avoid being abusive to the Cabbean."
                        "\n•	Avoid carrying Pets as Cabbea does not encourage. Please always ask Cabbean well before time.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Don’ts for Cabbeans:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	For Bikee, always wear Helmets."
                        "\n•	Do not violate Traffic Laws."
                        "\n•	Over-speeding or Rash Driving"
                        "\n•	Do not violate Cabbea’s Policies and procedures."
                        "\n•	Do not try to interrupt or disrupt Cabbea’s Network or Servers."
                        "\n•	Do not use abusive language with the customers."
                        "\n•	Do not be offensive, sexually harassing or threatening towards the customer."
                        "\n•	No Drugs"
                        "\n•	No Weapons"
                        "\n•	No Hidden Cameras in your Car. If reported by the customer than your ID will be permanently blocked."
                        "\n•	Do not let your Mood or Emotions overcome your Actions."
                        "\n•	Do not post any false or misleading stuff on Social media or any other platform than may cause damage to the Company."
                        "\n•	Do not try to operate any offices under Cabbea’s Name unless and until you and Cabbea are in an agreement."
                        "\n•	Do not sublet Cabbea’s Network to anyone without having an agreement with the Company."
                        "\n•	Do not Sale Fake Cabbea accounts to others as it might lead to Legal actions against you."
                        "\n•	No Racism against Age, Gender, Gender Identity, Religion, physical or mental disability."
                        "\n•	Failing to adhere any of the above mentioned clauses, may lead to blockage of ID or Legal action whichever deemed appropriate.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Do’s for Cabbeans:",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	Be courteous all the times"
                        "\n•	Greet Customers with a smile."
                        "\n•	Build a healthy relationship with the customers."
                        "\n•	Always ask customers if they are in a mood to talk to you. Otherwise keeping silence would be the best Customer services you can offer."
                        "\n•	Never indulge in unnecessary conversations with the customer."
                        "\n•	Always ask customers before turning your Music On."
                        "\n•	Keep your Car Neat & Clean."
                        "\n•	Always ask to turn on AC if your Car Category is Prime as switching on AC in Mandatory."
                        "\n•	If customer is not willing for AC to be turned On, then please follow his instructions."
                        "\n•	If customer is willing to Tip you, then it will be your personal agreement with the customer and Cabbea will not be involved in such transactions."
                        "\n•	Keeping Safety of the customer intact should be your utmost responsibility."
                        "\n•	Call 115 (Police Helpline) or Cabbea’s Helpline in case you need any assistance w.r.t Security breaches by a customer."
                        "\n•	Do not ask customers “Where do you want to go”. Just pick them up from their location and complete the ride with all your heart."
                        "\n•	You are always welcome to contact Cabbea’s Helpline so in case of any dispute please do not misbehave with the customer. Just call the Helpline and let us help you."
                        "\n•	Spread good words about Cabbea.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Covid 19 Policies: ",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Currently, the Government is making all-out efforts to deal with a rapidly evolving situation which is a challenge, not only for Pakistan but the whole world – and ensuring that we take proactive, comprehensive, and coordinated steps even when are In Ride."
                        "As Customer or A Cabbean, it is our duty to keep Us and everyone Safe from Corona Virus. For that, we need to make sure:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "•	We Wear A mask throughout the Ride"
                        "\n•	Use of Hand Sanitizer. Please share with one another if and when required."
                        "\n•	If weather permits than keep the Car windows down for ventilation"
                        "\n•	Use AC when it’s hot to circulate air within the Car"
                        "\n•	Try to keep passengers’ numbers to 3."
                        "\n•	Do not shake hands"
                        "\n•	Keep a fair distance while conversing.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Anti-Discrimination Policies: ",
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
                          "•	Age"
                          "\n•	Race"
                          "\n•	Color"
                          "\n•	Religion or Sect"
                          "\n•	Gender: Male or Female"
                          "\n•	Unnecessary talks that may flare up the other person."
                          "\n•	Physical or Mental disability"
                          "\n•	Marital Status"
                          "\n•	And any other that can lead to a dispute amongst the Cabbean and the Customer.",
                          textAlign: TextAlign.justify,
                          style: TextStyle()),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Note: Cabbea holds the right to go Legal against any of the above mentioned, in case of a breach. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Disclaimer for Mobile Apps",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Interpretation",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Definitions",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Company (referred to as either the Company, We, Us or Our in this Disclaimer) refers to Cabbea, G-10 Islamabad."
                        "\nService refers to the Mobile Application."
                        "\nYou mean the individual accessing the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable."
                        "\nApplication means the software program provided by the Company downloaded by You on any electronic device named Cabbea.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The information contained on the Service is for general information purposes only."
                        "\nThe Company assumes no responsibility for errors or omissions in the contents of the Service."
                        "\nIn no event shall the Company be liable for any special, direct, indirect, consequential, or incidental damages or any damages whatsoever, whether in an action of contract, negligence or other tort, arising out of or in connection with the use of the Service or the contents of the Service. The Company reserves the right to make additions, deletions, or modifications to the contents on the Service at any time without prior notice. This Disclaimer has been created with the help of the Disclaimer Generator."
                        "\nThe Company does not warrant that the Service is free of viruses or other harmful components.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "External Links Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The Service may contain links to external websites that are not provided or maintained by or in any way affiliated with the Company."
                        "\nPlease note that the Company does not guarantee the accuracy, relevance, timeliness, or completeness of any information on these external websites.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Errors and Omissions Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The information given by the Service is for general guidance on matters of interest only. Even if the Company takes every precaution to insure that the content of the Service is both current and accurate, errors can occur. Plus, given the changing nature of laws, rules and regulations, there may be delays, omissions or inaccuracies in the information contained on the Service."
                        "\nThe Company is not responsible for any errors or omissions, or for the results obtained from the use of this information.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Fair Use Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The Company may use copyrighted material which has not always been specifically authorized by the copyright owner. The Company is making such material available for criticism, comment, news reporting, teaching, scholarship, or research."
                        "\nThe Company believes this constitutes a fair use of any such copyrighted material as provided for in section 107 of the United States Copyright law."
                        "\nIf You wish to use copyrighted material from the Service for your own purposes that go beyond fair use, You must obtain permission from the copyright owner.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Views Expressed Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The Service may contain views and opinions which are those of the authors and do not necessarily reflect the official policy or position of any other author, agency, organization, employer or company, including the Company."
                        "\nComments published by users are their sole responsibility and the users will take full responsibility, liability and blame for any libel or litigation that results from something written in or as a direct result of something written in a comment. The Company is not liable for any comment published by users and reserves the right to delete any comment for any reason whatsoever",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "No Responsibility Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The information on the Service is provided with the understanding that the Company is not herein engaged in rendering legal, accounting, tax, or other professional advice and services. As such, it should not be used as a substitute for consultation with professional accounting, tax, legal or other competent advisers."
                        "\nIn no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever arising out of or in connection with your access or use or inability to access or use the Service.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Use at Your Own Risk Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "All information in the Service is provided as is, with no guarantee of completeness, accuracy, timeliness or of the results obtained from the use of this information, and without warranty of any kind, express or implied, including, but not limited to warranties of performance, merchantability and fitness for a particular purpose."
                        "\nThe Company will not be liable to You or anyone else for any decision made or action taken in reliance on the information given by the Service or for any consequential, special or similar damages, even if advised of the possibility of such damages.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Contact Us",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "If you have any questions about this Disclaimer, You can contact Us:"
                        "\nBy email: info@cabbea.com",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ))),
          ),
        ));
  }
}
