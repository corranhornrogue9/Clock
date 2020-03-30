using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenko.Core.Mathematics;
using Xenko.Input;
using Xenko.Engine;
using System.Xml;
using System.IO;

namespace WorldClock
{
    public class SiteSpawner : SyncScript
    {
        // Declared public member fields and properties will show in the game studio
        public List<Site> Captials = new List<Site>();
        public Prefab sitePrefab;
        public Prefab capitialPrefab;
        public float Radius = 75;
        public override void Start()
        {
            //Sites.Add(new Site() {degreesLat = 52, degreesLong = 0});
             //Sites.Add(new Site() {degreesLat = 36.2f, degreesLong = 138.25f});
             LoadSites();
            Log.Info("local path" + Directory.GetCurrentDirectory());
            foreach(var site in Captials)
            {
                  Log.Info("adding cap enity " + site.Name);
                var instance = capitialPrefab.Instantiate();
                var siteInstance = instance[0];
                siteInstance.Transform.Scale = siteInstance.Transform.Scale/ Entity.Transform.Scale.X; 
                siteInstance.Components.Add(site);
                Entity.AddChild(siteInstance);
                Log.Info("added cap enity" + site.Name);
                foreach(var subsite in site.subSites)
                {
                 Log.Info("adding site enity"  + subsite.Name);
                     var subInstance = sitePrefab.Instantiate();
                       Log.Info("instatiated prefab");
                    var subSiteInstance = subInstance[0];
                      Log.Info("got prefab isntance");
                    subSiteInstance.Transform.Scale = subSiteInstance.Transform.Scale/ Entity.Transform.Scale.X; 
                     Log.Info("transforemd scale");
                    subSiteInstance.Components.Add(subsite);
                    Log.Info("added com");
                    Entity.AddChild(subSiteInstance);
                      Log.Info("added site enity"  + subsite.Name);
                }
            }
            // Initialization of the script.
        }

        public override void Update()
        {
           
        }
        
        private void LoadSites()
        {
            XmlDocument doc = new XmlDocument();
            Log.Info("loading xml");
            doc.Load("Sites.xml");
            Log.Info("looking for sites");
         
            Log.Info("cycling in country");
            Log.Info("first nod etoye " +  doc.SelectSingleNode("Sites").Name);
            Log.Info("number of countries" +  doc.SelectSingleNode("Sites").ChildNodes.Count);
           foreach(XmlNode country in doc.SelectSingleNode("Sites").ChildNodes)
            {
                var captialName = country.SelectSingleNode("Capital").InnerText;
                Log.Info("adding country with cap " + captialName);
                Site captial = null;
                foreach(XmlNode siteNode in country.ChildNodes)
                {
                    
                    if(siteNode.Name == "Site" && siteNode.SelectSingleNode("Name").InnerText.Equals(captialName))
                    {
                        Log.Info("adding cap");
                        captial =new Site();
                        captial.degreesLat = Convert.ToSingle(siteNode.SelectSingleNode("Lat").InnerText);
                  
                        captial.degreesLong = Convert.ToSingle(siteNode.SelectSingleNode("Long").InnerText);

                        //site.capital = siteNode.SelectSingleNode("Name").InnerText;
                        captial.Name = siteNode.SelectSingleNode("Name").InnerText;

                        Captials.Add(captial);
                        captial.subSites = new List<Site>();
                          Log.Info("added cap");
                    }
                    
                }
                foreach(XmlNode siteNode in country.ChildNodes)
                    {
                        if(siteNode.Name == "Site" && !siteNode.SelectSingleNode("Name").InnerText.Equals(captialName))
                        {
                            Log.Info("adding site");
                            var site =new Site();
                            site.degreesLat = Convert.ToSingle(siteNode.SelectSingleNode("Lat").InnerText);
                          
                            site.degreesLong = Convert.ToSingle(siteNode.SelectSingleNode("Long").InnerText);
        
                            //site.capital = siteNode.SelectSingleNode("Name").InnerText;
                            site.Name = siteNode.SelectSingleNode("Name").InnerText;
        
                            captial.subSites.Add(site);
                                Log.Info("added site");
                    }
                }
                
                
                
            }
        }
    }
}
