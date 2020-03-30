using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenko.Core.Mathematics;
using Xenko.Input;
using Xenko.Engine;
    using Xenko.UI;
    using Xenko.UI.Controls;
    using Xenko.UI.Panels;
    using System.Xml;
    
namespace WorldClock
{

    
    public class SiteBlock : SyncScript
    {
    

        // Declared public member fields and properties will show in the game studio
        private TextBlock ClockDisplay;
        private TextBlock BlurbDisplay;
        private TextBlock TitleBlock;
        private UIPage page;
        private Border border;
        public string BlockName = "FeatureClock";
        public string Title = "Gloucester";
         private IWorldTime time;
         private List<Site> sites = new List<Site>();
         private Site currentSite;
         private double timer;
         private Random random = new Random();
         public Entity CameraGimble;
         private Quaternion currentRotation;
         private Quaternion targetRotation;
        public override void Start()
        {
            var tp = new TimeProvider();
            time = tp.WorldTime;
            page = Entity.Get<UIComponent>().Page;
            border = page.RootElement.FindVisualChildOfType<Border>(BlockName);
            ClockDisplay = border.FindVisualChildOfType<TextBlock>("TimeBlock");
            BlurbDisplay = border.FindVisualChildOfType<TextBlock>("BlurbBlock");
            TitleBlock = border.FindVisualChildOfType<TextBlock>("Title");
            currentRotation= CameraGimble.Transform.Rotation;
           timer = -1;
           LoadSites();
            // Initialization of the script.
        }

        public override void Update()
        {
            if(timer <= 0)
            {
                SelectNewSite();
                timer = 20;
            }
            
            timer -= Game.UpdateTime.Elapsed.TotalSeconds;
            
            if(ClockDisplay != null)
            {
                ClockDisplay.Text = time.GetTime().AddHours(currentSite.Offset).ToString("HH:mm:ss");
                BlurbDisplay.Text = currentSite.Blurb;
                TitleBlock.Text = currentSite.Name;
            }
            
            if(timer > 17)
            {
                CameraGimble.Transform.Rotation = Quaternion.Slerp(currentRotation,targetRotation,(20f - (float)timer) / 3f);
            }
            else
            {
                currentRotation = targetRotation;
            }
            
                   

            // Do stuff every new frame
        }
        
        private void SelectNewSite()
        {
            currentSite = sites[random.Next(sites.Count)];
            
            targetRotation = Quaternion.RotationZ(currentSite.DegreesLat * 0.01745329252f) * Quaternion.RotationY(currentSite.DegreesLong * 0.01745329252f) * Quaternion.RotationX(0);
            
      
        }
        
         private void LoadSites()
        {
            XmlDocument doc = new XmlDocument();
              doc.Load("Sites.xml");
           foreach(XmlNode country in doc.SelectSingleNode("Sites").ChildNodes)
            {              
                foreach(XmlNode siteNode in country.ChildNodes)
                {
                    
                    if(siteNode.Name == "Site")
                    {
                        Log.Info("adding site to ui");
                        var site =new Site();
                        Log.Info("adding lat ui");
                        site.degreesLat = Convert.ToSingle(siteNode.SelectSingleNode("Lat").InnerText);
                       Log.Info("adding long ui");
                        site.degreesLong = Convert.ToSingle(siteNode.SelectSingleNode("Long").InnerText);
                           Log.Info("adding name ui");
                        //site.capital = siteNode.SelectSingleNode("Name").InnerText;
                        site.Name = siteNode.SelectSingleNode("Name").InnerText;
                           Log.Info("adding blurb ui");
                        site.Blurb = siteNode.SelectSingleNode("Blurb").InnerText;
                         site.Offset = Convert.ToSingle(siteNode.SelectSingleNode("UTCOffset").InnerText);
                        sites.Add(site);
                        
                          Log.Info("added site to ui ui");
                    }
                    
                } 
            }
        }
    }
}
