import { RowMapper } from "./row_mapper";

export class LocalizationRowMapper implements RowMapper {
  constructor(private readonly inner: RowMapper) {}

  map(row: Record<string, unknown>): Record<string, unknown> {
    const mapped = this.inner.map(row);

    return Object.entries(mapped).reduce(
      (acc, [key, value]) => {
        const localizedKey = this.localizeKey(key);

        acc[localizedKey] = value;

        return acc;
      },
      {} as Record<string, unknown>,
    );
  }

  private localizeKey(key: string): string {
    if (key.includes(".") && !key.endsWith("id")) {
      const localizedKeys = key.split(".").map((k) => this.localizeKey(k));

      if (key.endsWith(".name")) return localizedKeys.slice(0, -1).join(": ");

      return localizedKeys.join(": ");
    }

    return (
      {
        id: "id",
        name: "الاسم",
        bounds: "الموقع",
        color: "اللون",
        photoUpdatedAt: "أخر تحديث للصورة",
        users: "الخدام المسؤلين",
        families: "العائلات",
        stores: "المتاجر",
        streets: "الشوارع",
        persons: "المخدومين",
        line: "الموقع",
        areas: "المناطق",
        address: "العنوان",
        geolocation: "الموقع",
        notes: "ملاحظات",
        adminFamily: "العائلة المسؤولة",
        studyYearFrom: "السنة الدراسية: من",
        studyYearTo: "السنة الدراسية: إلى",
        nextService: "الخدمة التالية",
        class: "الفصل",
        classes: "الفصول",
        group: "المجموعة",
        groups: "المجموعات",
        service: "الخدمة",
        services: "الخدمات",
        studyYear: "السنة الدراسية",
        serviceGender: "نوع المخدومين المسؤول عنهم",
        person: "بيانات المخدوم",
        mainPhone: "رقم الهاتف",
        otherPhones: "أرقام الهواتف الأخرى",
        birthdate: "تاريخ الميلاد",
        birthday: "يوم وشهر الميلاد",
        isStudent: "طالب؟",
        college: "الكلية",
        school: "المدرسة",
        qualification: "المؤهل",
        workStatus: "حالة العمل",
        martialStatus: "الحالة الاجتماعية",
        marriageDate: "تاريخ الزواج",
        deceasedSpouseName: "اسم الزوج المتوفي",
        status: "الحالة الروحية",
        lastFatherVisit: "أخر افتقاد للأب",
        job: "الوظيفة",
        jobDescription: "تفاصيل الوظيفة",
        gender: "النوع",
        personType: "نوع الفرد في العائلة",
        isShammas: "شماس؟",
        shammasLevel: "رتبة الشموسية",
        church: "الكنيسة",
        confessionFather: "اب الاعتراف",
        servingChurch: "الكنيسة التي يخدم بها",
        servingType: "نوع الخدمة",
        isServant: "خادم؟",
        state: "الحالة الروحية",
        hobby: "الهواية",
        hobbies: "الهوايات",
        tag: "الشارة",
        tags: "الشارات",
        district: "الحي",
        districts: "الأحياء السكنية",
        substreetName: "الشارع الفرعي",
        storeyNumber: "رقم الدور",
        apartmentNumber: "رقم الشقة",
        houseNumber: "رقم العمارة",
        specialLandmark: "علامة مميزة",
        area: "المنطقة",
        street: "الشارع",
        family: "العائلة",
        store: "المتجر",
        recordedByUser: "الخادم الذي سجل",
        user: "بيانات الخادم",
        order: "الترتيب",
        time: "الوقت",
        lastAttendance: "أخر حضور",
        lastEdit: "أخر تحديث البيانات",
        lastKodas: "أخر تناول",
        lastConfession: "أخر اعتراف",
        lastVisit: "أخر افتقاد",
        lastCall: "أخر مكالمات",
        serviceStudyYear: "السنة الدراسية",
      }[key] ?? key
    );
  }
}
