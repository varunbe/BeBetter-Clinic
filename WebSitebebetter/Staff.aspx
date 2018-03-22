<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .newStyle8 {
        font-family: "comic Sans MS";
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Jonna's profile-->
    <br />    
    <div class="well well-lg">
        <h2>Dr. Joanna T. Koulianos</h2>
        <p>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell style="vertical-align:top;"><img src="images/joanna.jpg" /></asp:TableHeaderCell>
                    <asp:TableHeaderCell HorizontalAlign="Justify" style="padding-right:20px;padding-left:25px;font-family:OpenDyslexic;font-size:12px;vertical-align:top;">
                        Dr. K has a PhD in clinical psychology and is licensed in the state of Alabama. Dr. K’s education and training was completed in Texas and California. Her professional training has included both pediatric and adult populations and has focused on psychological and neuropsychological assessment. The majority of her studies and training focused on children’s issues and included a fellowship at the University of California San Francisco with a placement in the department of Developmental and Behavioral Pediatrics. 
                        <br /><br />
                        Dr. K has maintained a private practice for nearly 20 years. She has worked with individuals and families in schools, juvenile courts, psychiatric hospitals, vocational rehabilitation, not for profit companies and her local community. 
                        <br /><br />
                        In recent years, her interests expanded to working with individuals interested in building a family or expanding their existing family. 
                         <br /><br />
                        After spending many years on the West coast, she is once again living in the south. Her husband and two young children enjoy the warm coastal living. Dr. K is keenly aware of the daily joys and challenges of raising youngsters and maintains her appreciation for these challenges in her work with families.
                        <br /><br />
                        Dr. K holds memberships with various National and State associations including the American Psychological Association, Alabama Psychological Association, American Society for Reproductive Medicine, Mental Health Group, and The International Dyslexia Association. 
                    </asp:TableHeaderCell>
                </asp:TableRow>
            </asp:Table>
        </p>    
    </div>
    <!--Jamie's profile-->
    <br />    
    <div class="well well-lg">
        <h2>Jamie Johnson</h2>
        <p>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell style="vertical-align:top;"><img src="images/jamie.jpg" /></asp:TableHeaderCell>
                    <asp:TableHeaderCell HorizontalAlign="Justify" style="padding-right:20px;padding-left:25px;font-family:OpenDyslexic;font-size:12px;vertical-align:top;">
                        Jamie is our Office Manager. She has worked in the medical field for 14 years and is very comfortable dealing directly with clients. She expertly maintains many of our front and back office services and activities. She is also an RN! We are very proud to have her. Of the many duties she performs, you can look to her for matters including scheduling, correspondence, accounting, and insurance billing. Please call on her if you have questions about our practice.
                     </asp:TableHeaderCell>
                </asp:TableRow>
            </asp:Table>
        </p>    
    </div>
    <!--Kimberly's profile-->
    <br />    
    <div class="well well-lg">
        <h2>Dr. Kimberly R. Zlomke</h2>
        <p>
            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell style="vertical-align:top;"><img src="images/kim.jpg" /></asp:TableHeaderCell>
                    <asp:TableHeaderCell HorizontalAlign="Justify" style="padding-right:20px;padding-left:25px;font-family:OpenDyslexic;font-size:12px;vertical-align:top;">
                        Dr. Zlomke obtained her doctorate in Clinical Psychology, with an emphasis in child/pediatric psychology, from Louisiana State University. She completed her pre-doctoral clinical internship at the University of Mississippi Medical Center and completed a post-doctoral fellowship in child/adolescent psychology at Baylor College of Medicine/Texas Children's Hospital. Dr. Zlomke is a licensed clinical psychologist and a Board Certified Behavior Analyst, with special interests in the areas of children, youth, and families. She has several areas of clinical interest and has expertise in assessment and treatment of autism spectrum disorders, childhood anxiety disorders, behavioral treatment of child problems such as sleep, toileting, and habit disorders; treatment of psychosocial concerns related to pediatric chronic illness; individual and family behavioral treatment of disruptive behavior disorders and autism spectrum disorders; cognitive and achievement testing; and behavior analytic treatment and consultation. Her current research program focuses on behavioral family interventions for children with disruptive behavior and autism and investigating the role that parenting plays in young adult stress, anxiety, and loneliness.
                    </asp:TableHeaderCell>
                </asp:TableRow>
            </asp:Table>
        </p>    
    </div>
    <!--Shelby's profile-->
    <br />    
    <div class="well well-lg">
        <h2>Shelby L. Cotner</h2>
        <p>
            <asp:Table ID="Table3" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell style="vertical-align:top;"><img src="images/shelby.jpg" /></asp:TableHeaderCell>
                    <asp:TableHeaderCell HorizontalAlign="Justify" style="padding-right:20px;padding-left:25px;font-family:OpenDyslexic;font-size:12px;vertical-align:top;">
                        Shelby Cotner is a certified and licensed speech language pathologist. She graduated from Birmingham-Southern College with a bachelor’s of science. She attended the university of South Alabama and received her Masters of Science in Speech-Language Pathology. She has been working with all ages in various settings, including private practice, home health, and skilled nursing facilities. Shelby enjoys working with children of all ages with a variety of disabilities. Her areas of interest include early language development, learning disabilities, Autism, and pragmatic language disorders. Shelby’s therapy approach includes teaching functional life skills that involve peer and family involvement to achieve goals.
                    </asp:TableHeaderCell>
                </asp:TableRow>
            </asp:Table>
        </p>    
    </div>
</asp:Content>