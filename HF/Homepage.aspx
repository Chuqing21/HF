<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="HF.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
    <div class="content">
        <div class="container1">
            <div class="carousel">
                <div class="imgslide">
                    <asp:Image ID="img1" runat="server" ImageUrl="~/ImageFolder/imgslide1.jpg" />
                </div>

                <div class="imgslide">
                    <asp:Image ID="img2" runat="server" ImageUrl="~/ImageFolder/imgslide2.jpg" />
                </div>

                 <div class="imgslide">
                    <asp:Image ID="img3" runat="server" ImageUrl="~/ImageFolder/imgslide3.jpg" />
                </div>

                 <div class="imgslide">
                    <asp:Image ID="img4" runat="server" ImageUrl="~/ImageFolder/imgslide4.jpg" />
                </div>

                 <div class="imgslide">
                    <asp:Image ID="img5" runat="server" ImageUrl="~/ImageFolder/imgslide5.jpg" />
                </div>

                 <div class="imgslide">
                    <asp:Image ID="img6" runat="server" ImageUrl="~/ImageFolder/imgslide6.jpg" />
                </div>
     
                <br />
                <asp:Button ID="btnGetStarted" runat="server" Text="Get Started" Height="47px" Width="204px" CssClass="button2"/>
            </div>
        </div>

        <div class="shape"></div>
        <div class="container2">
             
                  <div class="text">
                    <h2>Help Students Learn Better by</h2>
                    Introducing the era of Online Courses, <br />
                    Quizzes, Practices, Challenges and Tests <br />
                    Creating an environment where studens can learn freely and comfortably. <br /><br />
                    <asp:HyperLink ID="linkViewAllCourses" runat="server" NavigateUrl="~/courses.aspx">View All Courses  >>></asp:HyperLink>
                </div>

         
            <div class="sideimg">
                <asp:Image ID="imgSide" runat="server" ImageUrl="~/ImageFolder/imgs2.jpg" />
            </div>


        </div>

    </div>



<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family:'Poppins', sans-serif;
    }

    .button{
        width:100px;
        height:30px;
        background-color:transparent;
        border: 2px solid #006666;
        outline:none;
        border-radius:6px;
        cursor:pointer;
        font-size:1em;
        color:#006666;
        font-weight:500;
        transition:0.5s;
        margin-left:30px;
    }

    .button:hover{
        background:#006666;
        color:white
    }

    .content{
        background-color:white;
       
    }

    .container1{
        border-radius:25px;
        margin-top:70px;
        //margin-bottom:5px;
        margin-left:50px;
        margin-right:50px;
        color:white;
        text-align:center;
        font-size:1em;
        font-weight:500;
        background-color:#006666;
        height:400px;
        padding:20px;
       
    }

    .carousel{
        max-width:600px;
        position:relative;
        margin:auto;
    }


    .imgslide{
        display:none;
        
    }

    .triangle-right::before{
        transform: translate(50px,180px);
        position:absolute;
        //top:0;
        width: 0;
        height: 0;
        border-top: 70px solid transparent;
        border-left: 550px solid #72cfb9;
        border-bottom: 200px solid transparent;
        
        content:'';
    }

    .shape::before{
        width: 800px;
        height: 260px;
        transform: skew(20deg);
        background: #C0E5C8;
        content:'';
        margin-left:45px;
        margin-top:190px;
        position:absolute;
      
    }

    .carousel img{
        align-items:center;
        justify-items:center;
        border-radius:25px;
        //width:50%;
        margin-bottom:5px;
        max-width:100%;
        max-height:300px;
        width:600px;
        height:600px;
       
       
    }

    .slidebtn{
        position:inherit;
        top:50%;
        width:auto;
        padding:10px;
        font-size:15pt;
        cursor:pointer;
        background-color:white;
        color:#006666;
        border:none;
        border-radius:5px;
        text-align:center;
        user-select:none;
        transition:0.6s ease;

    }

    .btnNext{
        right:0;
    }

    .slidebtn:hover{
        background-color:rgba(0,0,0,0.8);
    }


    .container2{
        border-radius:25px;
        margin-top:100px;
        margin-bottom:80px;
        margin-left:50px;
        margin-right:50px;
        color: #006666;
        text-align:center;
        font-size:1em;
        font-weight:500;
        height:50%;
        display:grid;
        align-items:center;
        grid-template-columns:1fr 1fr;
        column-gap:70px;
        position:relative;
        
    }

    .container2 img{
        max-width:100%;
        max-height:100%;
        border-radius:25px;
        position:relative;
        border:6px solid #C0E5C8;
    }

    .container2 .text{
        text-align:left;
        padding-left:40px;
        z-index:1;
        position:relative;
    }

    .text a{
        color: #AF5D63;
        margin-bottom:20px;
    }

    .text a:hover{
        color: #0E0E52;
       
    }

    .text h2{
        padding-top:20px;
        padding-bottom:50px;
        color: #006666;
        text-align:left;
       
    }

    .carousel .button2{
        background-color:#006666;
        border: 2px solid #006666;
        outline:none;
        border-radius:6px;
        cursor:pointer;
        font-size:1em;
        font-weight:500;
        transition:0.5s;
        position: absolute;
        left: 50%;
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        margin-top:10px;
        margin-bottom:50px;
        background-color:white;
        border: 2px solid white;
        color:#006666;
        
    }

     .carousel .button2:hover{
         border: 2px solid white;
         background-color:#006666;
         color:#fff;
     }




</style>
   
    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("imgslide");
            //let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            //for (i = 0; i < dots.length; i++) {
            //dots[i].className = dots[i].className.replace(" active", "");
            //}
            slides[slideIndex - 1].style.display = "block";
            //dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 4000); // Change image every 2 seconds
        }
    </script>

    
</asp:Content>
